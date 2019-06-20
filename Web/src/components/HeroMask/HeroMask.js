import React, { Component } from 'react'
import { roundRect } from '../../util/helpers'
import './HeroMask.css'

// Options
const deg = 45 * Math.PI / 180
const smoosh = 0.66
const br = 12
const numTiles = 3
let offset = 160

class HeroMask extends Component {
  constructor(props) {
    super(props)
    this.ctx = null
    this.canvas = null
    this.scaleFactor = 1
    this.iteration = 0
    this.animate = true
    this.iterationLimit = 100
    this.tilePos = []
    this.tileOpacity = []
  }

  componentDidMount() {
    // Set up canvas
    this.canvas = this.heroMask
    const canvas = this.canvas

    this.ctx = canvas.getContext('2d')
    // Rescale canvas for high resolution displays
    this.scaleFactor = this.backingScale(window)
    if (this.scaleFactor > 1) {
      canvas.width = canvas.width * this.scaleFactor
      canvas.height = canvas.height * this.scaleFactor
      this.ctx = canvas.getContext('2d')
    }
    // set listener, this produces re-draws
    this.resizeHandler()
    window.addEventListener('resize', () => this.resizeHandler())
  }

  resize = () => {
    const canvas = this.canvas
    // Lookup the size the browser is displaying the canvas.
    var displayWidth = canvas.clientWidth
    var displayHeight = canvas.clientHeight
    // Check if the canvas is not the same size.
    if (canvas.width !== displayWidth || canvas.height !== displayHeight) {
      // Make the canvas the same size
      canvas.width = displayWidth * this.scaleFactor
      canvas.height = displayHeight * this.scaleFactor
    }
  }

  resizeHandler = () => {
    this.resize()
    this.drawHandler()
  }

  componentWillUnmount() {
    window.removeEventListener('resize', this.drawHandler)
  }

  backingScale = w => {
    if ('devicePixelRatio' in w) {
      if (w.devicePixelRatio > 1) {
        return w.devicePixelRatio
      }
    }
    return 1
  }

  easeInOutCubic = t => --t * t * t + 1

  drawHandler = () => {
    requestAnimationFrame(this.draw)
    if (this.iteration < this.iterationLimit) {
      this.iteration++
      requestAnimationFrame(this.drawHandler)
    }
  }

  draw = () => {
    const ctx = this.ctx
    const canvas = this.canvas
    const cw = canvas.width
    const ch = canvas.height
    const t = this.iteration / this.iterationLimit

    let size = 4000

    let i = 0

    let xFrameRatio = 0.5
    let yFrameRatio = 0.5
    const xFrameRatioTablet = 0.1
    const yFrameRatioTablet = 0.75
    if (window.innerWidth < 1024) {
      xFrameRatio = xFrameRatioTablet
      yFrameRatio = yFrameRatioTablet
    }

    const yMidpoint = Math.hypot(size, size) * smoosh * 0.5
    const windowYMidpoint = ch * yFrameRatio

    const xEdgeLeft = -Math.hypot(size, size) * 0.5
    const windowXMidpoint = cw * xFrameRatio

    const x = windowXMidpoint - xEdgeLeft
    const y = windowYMidpoint - yMidpoint

    // Reset the canvas to defaults for new frames, even from resize events
    ctx.clearRect(0, 0, cw, ch)

    ctx.globalCompositeOperation = 'source-over'

    // Set up isometric transforms on squares
    ctx.translate(x, y)
    ctx.scale(1, smoosh)
    ctx.rotate(deg)

    // Draw tiles
    for (i = 0; i < numTiles; i++) {
      this.tileOpacity[i] = 1 / (i + 1) * t
      this.tilePos[i] = Math.floor(this.easeInOutCubic(t) * i * offset)
      ctx.fillStyle = `rgba(255, 255, 255, ${this.tileOpacity[i]})`
      roundRect(
        ctx,
        this.tilePos[i],
        this.tilePos[i],
        size,
        size,
        br,
        true,
        false
      )
    }

    // Set a globalCompositeOperation that makes a mask
    ctx.globalCompositeOperation = 'source-out'

    // Reset canvas transform to defaults
    ctx.setTransform(1, 0, 0, 1, 0, 0)

    ctx.fillStyle = 'rgba(255, 255, 255, 1)'
    ctx.fillRect(0, 0, cw, ch)
  }

  render() {
    return (
      <canvas id={'hero-mask'} ref={heroMask => (this.heroMask = heroMask)}>
        <div id={'hero-mask-fallback'} />
      </canvas>
    )
  }
}

export default HeroMask


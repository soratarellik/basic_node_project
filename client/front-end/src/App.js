import React, { useState, useLayoutEffect } from "react"
import './App.css';
import logo from './logo.svg';

function App() {

  const [scroll , setScroll] = useState(0)
  const [screenHeight , setScreenHeight] = useState(0)
  useLayoutEffect(()=>{
    const handleScroll = e => {
      setScroll(window.scrollY)
    }
    setScreenHeight(window.screen.height)
    window.addEventListener("scroll", handleScroll)

    return () => {
      window.removeEventListener("scroll", handleScroll)
    }
    console.log(scroll)
  }, [scroll])
 
  return (
    <div onScroll={e=>console.log(e.srcElement.body.scrollTop)} className="App">
     <div className='backGround aqua z1 fix full-size' id="1"> <img src={logo} className="App-logo" alt="logo" /></div>
     {/* <div style={{top : -scroll}} className='backGround aqua z1' id="1"> <img src={logo} className="App-logo" alt="logo" /></div> */}
     <div style={{top : -scroll/0.9}} className='backGround red z4 ' id="2"></div>
     <div style={{top : -scroll/0.7+(screenHeight)}} className='backGround green z4 translucid' id="2"></div>
     <div style={{top : -scroll/0.5+(screenHeight*1.5)}} className='backGround purple z4 transparent' id="2"></div>
     {/* <div style={{top : -scroll/0.6+(screenHeight*2)}} className='backGround green z4' id="2"></div> */}
     <div style={{top : -scroll/0.8+(screenHeight*2.5)}} className='backGround red z4 translucid' id="2"></div>
     <div style={{top : -scroll/0.4+(screenHeight*3)}} className='backGround purple z4' id="2"></div>
     {/* <div style={{top : -scroll+(screenHeight)}} className='backGround green z3' id="3"></div> */}
     <div style={{top : -scroll/0.6+(screenHeight*3.5)}} className='backGround purple z4 full-size' id="4"></div>
    </div>
  );
}

export default App;

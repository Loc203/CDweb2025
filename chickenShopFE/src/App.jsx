import { useState } from 'react'
import { Link } from 'react-router'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <h1 className='text-red-400 text-3xl'>test tailwindcss</h1>
      <Link to={"/testRouter"}>router</Link>
    </>
  )
}

export default App

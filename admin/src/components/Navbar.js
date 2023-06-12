import React from 'react'
import Link from 'next/link'

const Navbar = () => {
    return (
        <>
            <header className='w-full px-32 py-2 z-10 font-medium flex items-center justify-between relative'>
                <div className={`flex items-center justify-center mt-2`}>
                    <Link href="/" className={`h-14 text-dark flex items-center justify-center rounded-full text-3xl font-extrabold dark:text-light`}>
                        <span>{`AdventuRide`}</span>
                    </Link>
                </div>

                <div className='w-auto flex items-center justify-between'>
                    <nav className='flex items-center justify-center'>
                        <Link href="/">
                            Home
                        </Link>
                    </nav>
                </div>
            </header>
        </>
    )
}

export default Navbar
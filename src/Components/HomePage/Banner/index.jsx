import { TypeAnimation } from "react-type-animation";

function Banner() {
  return (
    <>
      {/* banner-area-start */}
      <section className="banner-area banner-brand fix " id="banner">

        <div className="banner-5 p-relative">
          <div className="banner-5-content-shape">
            <div className="banner-5-content-shape-one">
              <img src="assets/img/shape/banner-5-shape-10.png" alt="" />
            </div>
            <div className="banner-5-content-shape-two">
              <i>
                <svg
                  width={1475}
                  height={362}
                  viewBox="0 0 1475 362"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    className="line-dash-path"
                    d="M1474 361C1451.67 263 1275 49 638.999 261C2.99927 473 -98.5012 187 79.4993 1"
                    stroke="url(#paint0_linear_434_178)"
                    strokeDasharray="4 5"
                  />
                  <defs>
                    <linearGradient
                      id="paint0_linear_434_178"
                      x1={342}
                      y1={152}
                      x2={1623}
                      y2={432}
                      gradientUnits="userSpaceOnUse"
                    >
                      <stop offset={1} stopColor="#010F1C" stopOpacity="0.4" />
                      <stop offset={1} stopColor="#010F1C" stopOpacity={0} />
                    </linearGradient>
                  </defs>
                </svg>
              </i>
            </div>
          </div>
          <div className="container">
            <div className="banner-5-shape">
              <div className="banner-5-shape-one">
                <img src="assets/img/shape/banner-5-shape-1.png" alt="" />
              </div>
            </div>
            <div className="row">
              <div className="col-xl-7 col-lg-6 order-2 order-lg-1">
                <div className="banner-5-content p-relative pt-80 ">
                  <h3 className="banner-5-title">
                    Des solutions numériques
                    <TypeAnimation
                      style={{
                        background: "#007cf5",
                        /*  "linear-gradient(90deg, #501E9C 0%, #A44CEE 43.75%, #FF847F 100%)" */
                        WebkitBackgroundClip: "text",
                        WebkitTextFillColor: "transparent",
                        backgroundClip: "text",
                        textFillColor: "transparent",
                        padding: "0 0 20px 0",
                      }}
                      sequence={[
                        // Same substring at the start will only be typed once, initially
                        " qui transforment vos idées.",
                        3000,
                        " pour relever vos  défis.",
                        3000,
                        " qui boostent vos activités.",
                        3000,
                        " qui simplifient la vie.",
                        3000,
                      ]}
                      speed={70}
                      repeat={Infinity}
                    />
                  </h3>

                  <p>
                    
                    Nous combinons notre expertise à une variété de ressources
                    pour <br />
                    créer des solutions numériques innovantes répondant aux{" "}
                    <br />
                    exigences de nos partenaires et clients.
                  </p>
                  <div className="banner-5-btn">
                    <a className="light-blue-btn mr-20" href="#about">
                      Qui sommes-nous ?
                    </a>
                    <span>
                      Nos projets
                      <a href="#case">
                        {" "}
                        <i class="fa-solid fa-arrow-right"></i>{" "}
                      </a>
                    </span>
                  </div>
                </div>
              </div>
              <div className="col-xl-5 col-lg-6 order-1 order-lg-2">
                <div className="banner-5-thumb p-relative">
                  <img src="assets/img/banner/banner-5-bg-1.png" alt="" />
                  <div className="banner-5-thumb-shape d-none d-md-block">
                    <div className="banner-5-thumb-shape-one d-none d-lg-block">
                      <img src="assets/img/shape/banner-5-shape-7.png" alt="" />
                    </div>

                    <div className="banner-5-thumb-shape-four">
                      <img src="assets/img/shape/clapper.png" alt="" />
                    </div>
                    <div className="banner-5-thumb-shape-five">
                      <img src="assets/img/shape/dev.png" alt="" />
                    </div>
                    <div className="banner-5-thumb-shape-six">
                      <img src="assets/img/shape/palette.png" alt="" />
                    </div>
                    <div className="banner-5-thumb-shape-seven"></div>
                    <div className="banner-5-thumb-shape-eight"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      {/* banner-area-end */}
    </>
  );
}

export default Banner;

import Slider from "react-slick";

export default function Portfolio() {
  var settings = {
    infinite: false,
    speed: 500,
    slidesToShow: 2,
    arrows: false,
    slidesToScroll: 2,
    initialSlide: 0,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true,
        },
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
          initialSlide: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  };
  return (
    <>
      {/* case-area-start */}
      <section className="case-area pb-140 fix" id="case">
        <div className="container">
          <div className="row">
            <div className="col-lg-6 col-md-8">
              <div className="tpsection__wrapper mb-45">
                <div className="tpbanner__sub-title mb-15">
                  <span>PORTFOLIO</span>
                  <i>
                    <svg
                      width={150}
                      height={40}
                      viewBox="0 0 150 40"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      xmlnsXlink="http://www.w3.org/1999/xlink"
                    >
                      <rect
                        width={150}
                        height={40}
                        fill="url(#pattern3)"
                        fillOpacity="0.1"
                      />
                      <defs>
                        <pattern
                          id="pattern3"
                          patternContentUnits="objectBoundingBox"
                          width={1}
                          height={1}
                        >
                          <use
                            xlinkHref="#image0_859_3410"
                            transform="translate(-0.0584971) scale(0.00611611 0.0203396)"
                          />
                        </pattern>
                        <image
                          id="image0_859_3410"
                          width={180}
                          height={50}
                          xlinkHref="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAAyCAYAAAD1JPH3AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDcuMS1jMDAwIDc5LmVkYTJiM2ZhYywgMjAyMS8xMS8xNy0xNzoyMzoxOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RUMyMzkwQTczMTM3MTFFRDg3NUZBOUZCRDk1MThFMTMiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RUMyMzkwQTYzMTM3MTFFRDg3NUZBOUZCRDk1MThFMTMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIzLjEgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MjFBQkIwMjIzMTA2MTFFREEzRkNBQzVFOTRFRTVERTgiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MjFBQkIwMjMzMTA2MTFFREEzRkNBQzVFOTRFRTVERTgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5lgZ3iAAAB2ElEQVR42uzd7U3CUBiA0Wr4DxvQDWQE4gS6gSO6ibhB2aBMoCG5ja83pVRaSSnnJE2/MII+t7386sPz21dxQ1ZpKdNSpPUynItL/nNd6rSc2t6n/Sot+TYTsJhgrJsU6TqLt7zS779EE3ad1vuwvwuDg5kF3QQao92E47fq3ICrQ/RN8LsQPBMPOob7lEV8j5o7z6Yj+Cbwzyx+U5orB32MdCvcwcFv0/ZLx5SmubrHAVCZ0lwW9CrEu07rcsC8k/GmNPk8vg7hx2P13K/4fYP+6LhdcjvR5wMgrmP0h5bXxdecmjadu1N0ffFuOxc/zzKcP65fhwQt5nkOgGJu08NH/1cEDYIGQYOgETQIGgQNggZBI2gQNAgaBA2CRtAgaBA0CBoEjaBB0CBoEDQIGkGDoEHQIGgQNIIGQYOgQdAgaAQNE7aY+Ptre7JSn6ct9VWe2UfQvx4XFuPbZ+fz1/5HsGPEHh831mw359bhWH6OCQf9Xvw8v67OQmyLcg6GfJ4Yd769Dvviv+yuXQ0N+tXf8aKpUtUz/rJlvWw5Pmf5RfIQ7vJV0fO55wvtTSL+3R+mQasTd4BlyzRpdeWBEKeL+aC+yt1d0PczDSpH/PJbjfi+RvUtwADssXzgKiX3gwAAAABJRU5ErkJggg=="
                        />
                      </defs>
                    </svg>
                  </i>
                </div>
                <h2 className="tpsection__title">Nos projets récents</h2>
              </div>
            </div>
            <div className="col-lg-6 col-md-4">
              <div className="tpcase-arrow text-end">
                <div className="tpcase-nav p-relative">
                  {/*  <button className="prev-slide prev-slide-case">
                    <span>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width={8}
                        height={14}
                        fill="none"
                        viewBox="0 0 8 14"
                      >
                        <path
                          fillRule="evenodd"
                          d="M7.707.293a1 1 0 0 1 0 1.414L2.414 7l5.293 5.293a1 1 0 0 1-1.414 1.414l-6-6a1 1 0 0 1 0-1.414l6-6a1 1 0 0 1 1.414 0z"
                          fill="#9f9fa9"
                        />
                      </svg>
                    </span>
                  </button>
                  <button className="next-slide next-slide-case">
                    <span>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width={8}
                        height={14}
                        fill="none"
                        viewBox="0 0 8 14"
                      >
                        <path
                          fillRule="evenodd"
                          d="M.293 13.707a1 1 0 0 1 0-1.414L5.586 7 .293 1.707A1 1 0 1 1 1.707.293l6 6a1 1 0 0 1 0 1.414l-6 6a1 1 0 0 1-1.414 0z"
                          fill="#9f9fa9"
                        />
                      </svg>
                    </span>
                  </button> */}
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="container slider-container">
          <Slider {...settings} className="row tpcase-active">
            <div className="col-lg-6">
              <div className="tpcase">
                <div className="tpcase-thumb w-img">
                  <img src="assets/img/services/case-1.jpg" alt="" />
                </div>
                <div className="tpcase-content">
                  <div className="tpcase-tag mb-15">
                    <span className="mr-5">Site Web</span>
                    <span className="mr-5">HTML5/CSS3</span>
                    <span className="mr-5">React Js</span>
                  </div>
                  <h3 className="tpcase-title">
                    <a target="blank" href="http://www.africatownmural.com/">
                      AfricaTown Mural
                    </a>
                  </h3>
                </div>
              </div>
            </div>

            <div className="col-lg-6">
              <div className="tpcase">
                <div className="tpcase-thumb w-img">
                  <img src="assets/img/services/case-2.jpg" alt="" />
                </div>
                <div className="tpcase-content">
                  <div className="tpcase-tag mb-15">
                    <span className="mr-5">Site Web</span>
                    <span className="mr-5">HTML5/CSS3</span>
                    <span className="mr-5">React Js</span>
                  </div>
                  <h3 className="tpcase-title">
                    <a target="blank" href="https://ustaarabu.org/">
                      Ustaarabu
                    </a>
                  </h3>
                </div>
              </div>
            </div>
          </Slider>
        </div>
      </section>
      {/* case-area-end */}
    </>
  );
}

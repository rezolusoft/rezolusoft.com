import Slider from "react-slick";

export default function Partners() {
  var settings = {
    infinite: true,
    autoplay: true,
    speed: 500,
    slidesToShow: 4,
    arrows: false,
    slidesToScroll: 3,
    initialSlide: 0,
    autoplaySpeed: 1500,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
    ],
  };
  return (
    <>
      {/* brand-area-start */}
      <div className="brand-area pb-30 pt-10 mb-100">
        <div className="content text-center">
          <div className="tpbanner__sub-title mb-15">
            <span>PARTENAIRES</span>
            <i>
              <svg
                width={126}
                height={37}
                viewBox="0 0 126 37"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                xmlnsXlink="http://www.w3.org/1999/xlink"
              >
                <rect
                  width={126}
                  height={37}
                  fill="url(#pattern4)"
                  fillOpacity="0.08"
                />
                <defs>
                  <pattern
                    id="pattern4"
                    patternContentUnits="objectBoundingBox"
                    width={1}
                    height={1}
                  >
                    <use
                      xlinkHref="#image0_859_2751"
                      transform="translate(-0.0507936) scale(0.00603175 0.0205405)"
                    />
                  </pattern>
                  <image
                    id="image0_859_2751"
                    width={180}
                    height={50}
                    xlinkHref="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAAyCAYAAAD1JPH3AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDcuMS1jMDAwIDc5LmVkYTJiM2ZhYywgMjAyMS8xMS8xNy0xNzoyMzoxOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RUMyMzkwQTczMTM3MTFFRDg3NUZBOUZCRDk1MThFMTMiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RUMyMzkwQTYzMTM3MTFFRDg3NUZBOUZCRDk1MThFMTMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIzLjEgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MjFBQkIwMjIzMTA2MTFFREEzRkNBQzVFOTRFRTVERTgiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MjFBQkIwMjMzMTA2MTFFREEzRkNBQzVFOTRFRTVERTgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5lgZ3iAAAB2ElEQVR42uzd7U3CUBiA0Wr4DxvQDWQE4gS6gSO6ibhB2aBMoCG5ja83pVRaSSnnJE2/MII+t7386sPz21dxQ1ZpKdNSpPUynItL/nNd6rSc2t6n/Sot+TYTsJhgrJsU6TqLt7zS779EE3ad1vuwvwuDg5kF3QQao92E47fq3ICrQ/RN8LsQPBMPOob7lEV8j5o7z6Yj+Cbwzyx+U5orB32MdCvcwcFv0/ZLx5SmubrHAVCZ0lwW9CrEu07rcsC8k/GmNPk8vg7hx2P13K/4fYP+6LhdcjvR5wMgrmP0h5bXxdecmjadu1N0ffFuOxc/zzKcP65fhwQt5nkOgGJu08NH/1cEDYIGQYOgETQIGgQNggZBI2gQNAgaBA2CRtAgaBA0CBoEjaBB0CBoEDQIGkGDoEHQIGgQNIIGQYOgQdAgaAQNE7aY+Ptre7JSn6ct9VWe2UfQvx4XFuPbZ+fz1/5HsGPEHh831mw359bhWH6OCQf9Xvw8v67OQmyLcg6GfJ4Yd769Dvviv+yuXQ0N+tXf8aKpUtUz/rJlvWw5Pmf5RfIQ7vJV0fO55wvtTSL+3R+mQasTd4BlyzRpdeWBEKeL+aC+yt1d0PczDSpH/PJbjfi+RvUtwADssXzgKiX3gwAAAABJRU5ErkJggg=="
                  />
                </defs>
              </svg>
            </i>
          </div>
          <h2 className="tpsection__title mb-55">Ils nous font confiance</h2>
        </div>
        <div className="container slider-container">
          <div className="row justify-content-center">
            <div className="col-xxl-10 col-xl-8 col-lg-10">
              <Slider {...settings} className="tpbrand tpbrand-active">
                <div className="tpbrand-item mr-5">
                  <img src="assets/img/brand/a.png" alt="" />
                </div>
                <div className="tpbrand-item mr-5">
                  <img src="assets/img/brand/akanga.jpg" alt="" />
                </div>
                <div className="tpbrand-item mr-5">
                  <img src="assets/img/brand/ola.png" alt="" />
                </div>
                <div className="tpbrand-item mr-5">
                  <img src="assets/img/brand/seeda.png" alt="" />
                </div>
                <div className="tpbrand-item mr-5">
                  <img src="assets/img/brand/tunde.png" alt="" />
                </div>

                <div className="tpbrand-item mr-5">
                  <img src="assets/img/brand/wa.png" alt="" />
                </div>
              </Slider>
            </div>
          </div>
        </div>
      </div>
      {/* brand-area-end */}
    </>
  );
}

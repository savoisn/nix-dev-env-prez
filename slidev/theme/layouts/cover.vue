<template>
  <div class="slidev-layout cover cover-background" >
    <div class="my-auto w-full titles">
      <slot />
    </div>
  </div>
</template>

<style lang="postcss">
.cover-background {
  background-image: linear-gradient(#0005, #0008), url("../assets/bg-cover.png");
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
.titles {
  text-align: center;
  color: white;
}
.titles h1{
  color: #e2a86e;
  .accent{
          color: #f88224;
  }
}
.titles h2{
  color: white;
  font-size: 3.5rem;
}
</style>


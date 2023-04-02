import { PrismaClient } from '@prisma/client'


const prisma = new PrismaClient()

async function main() {
    const role = await prisma.catroles.create({
      data: {
        vrole: "Rol 1",
        vdescription: "Prueba 1",
        ishowclient: true
      },
  
    })
    console.log(role)


    const route = await prisma.catroutes.create({
        data: {
            vroute: "/prueba/query",
            vfeature: "Feature1"
        },
    })
    console.log(route)
  

    const permiso = await prisma.catpermisos.create({
        data: {
            vpermiso:"Testpermiso1",
            vdescripcion:"Descripcion 1",
            iactivo: true
        },
    })
    console.log(permiso)
 
    const rel1 = await prisma.catpermisos.create({
        data: {
            vpermiso:"Testpermiso1",
            vdescripcion:"Descripcion 1",
            iactivo: true
        },
    })
    console.log(permiso)


}

  main()
    .then(async () => {
      await prisma.$disconnect()
    })
  
    .catch(async (e) => {
      console.error(e)
      await prisma.$disconnect()
      process.exit(1)
    })
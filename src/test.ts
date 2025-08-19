import {PrismaClient} from "@prisma/client"
import { log } from "node:console"

const prisma = new PrismaClient()

async function main () {
    await prisma.log.create({
        data: {
            level: "ERROR",
            message: "Test log",
            source : "app"
        }
    })
    
    const logs = await prisma.log.findMany()
    console.log(logs)
}
main().finally(() => prisma.$disconnect())
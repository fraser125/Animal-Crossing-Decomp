lbl_803B1880:
/* 803B1880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1884  7C 08 02 A6 */	mflr r0
/* 803B1888  3C 80 81 16 */	lis r4, data_81167DB8@ha /* 0x81167DB8@ha */
/* 803B188C  38 60 00 0B */	li r3, 0xb
/* 803B1890  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B1898  3B E4 7D B8 */	addi r31, r4, data_81167DB8@l /* 0x81167DB8@l */
/* 803B189C  4B C5 53 39 */	bl JW_GetAramAddress
/* 803B18A0  90 7F 00 00 */	stw r3, 0(r31)
/* 803B18A4  38 60 00 0A */	li r3, 0xa
/* 803B18A8  4B C5 53 2D */	bl JW_GetAramAddress
/* 803B18AC  90 7F 00 04 */	stw r3, 4(r31)
/* 803B18B0  38 60 00 02 */	li r3, 2
/* 803B18B4  4B C5 53 21 */	bl JW_GetAramAddress
/* 803B18B8  90 7F 00 08 */	stw r3, 8(r31)
/* 803B18BC  38 60 00 01 */	li r3, 1
/* 803B18C0  4B C5 53 15 */	bl JW_GetAramAddress
/* 803B18C4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 803B18C8  38 60 00 15 */	li r3, 0x15
/* 803B18CC  4B C5 53 09 */	bl JW_GetAramAddress
/* 803B18D0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 803B18D4  38 60 00 14 */	li r3, 0x14
/* 803B18D8  4B C5 52 FD */	bl JW_GetAramAddress
/* 803B18DC  90 7F 00 14 */	stw r3, 0x14(r31)
/* 803B18E0  38 60 00 03 */	li r3, 3
/* 803B18E4  4B C5 52 F1 */	bl JW_GetAramAddress
/* 803B18E8  38 00 00 00 */	li r0, 0
/* 803B18EC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 803B18F0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803B18F4  48 00 0F 31 */	bl mHandbillz_aram_init
/* 803B18F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B18FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B1900  7C 08 03 A6 */	mtlr r0
/* 803B1904  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1908  4E 80 00 20 */	blr 

lbl_8038458C:
/* 8038458C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384590  7C 08 02 A6 */	mflr r0
/* 80384594  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008015@ha */
/* 80384598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038459C  38 63 80 15 */	addi r3, r3, 0x8015 /* 0x00008015@l */
/* 803845A0  48 2A 97 65 */	bl sAdo_SysTrgStart
/* 803845A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803845A8  7C 08 03 A6 */	mtlr r0
/* 803845AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803845B0  4E 80 00 20 */	blr 

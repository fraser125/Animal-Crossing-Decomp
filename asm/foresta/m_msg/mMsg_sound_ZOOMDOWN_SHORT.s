lbl_803C21A0:
/* 803C21A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C21A4  7C 08 02 A6 */	mflr r0
/* 803C21A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C21AC  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 803C21B0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 803C21B4  40 82 00 10 */	bne lbl_803C21C4
/* 803C21B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008005@ha */
/* 803C21BC  38 63 80 05 */	addi r3, r3, 0x8005 /* 0x00008005@l */
/* 803C21C0  48 26 BB 45 */	bl sAdo_SysTrgStart
lbl_803C21C4:
/* 803C21C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C21C8  7C 08 03 A6 */	mtlr r0
/* 803C21CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C21D0  4E 80 00 20 */	blr 

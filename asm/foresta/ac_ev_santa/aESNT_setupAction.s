lbl_8052388C:
/* 8052388C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523890  7C 08 02 A6 */	mflr r0
/* 80523894  3C C0 80 6A */	lis r6, process@ha /* 0x806A0B3C@ha */
/* 80523898  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052389C  54 A0 10 3A */	slwi r0, r5, 2
/* 805238A0  38 C6 0B 3C */	addi r6, r6, process@l /* 0x806A0B3C@l */
/* 805238A4  90 A3 09 94 */	stw r5, 0x994(r3)
/* 805238A8  7C 06 00 2E */	lwzx r0, r6, r0
/* 805238AC  90 03 09 98 */	stw r0, 0x998(r3)
/* 805238B0  4B FF FF A9 */	bl aESNT_init_proc
/* 805238B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805238B8  7C 08 03 A6 */	mtlr r0
/* 805238BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805238C0  4E 80 00 20 */	blr 

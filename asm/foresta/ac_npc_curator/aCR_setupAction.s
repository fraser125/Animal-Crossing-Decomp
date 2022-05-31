lbl_8054B28C:
/* 8054B28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B290  7C 08 02 A6 */	mflr r0
/* 8054B294  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054B29C  7C BF 2B 78 */	mr r31, r5
/* 8054B2A0  7F E4 FB 78 */	mr r4, r31
/* 8054B2A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8054B2A8  7C 7E 1B 78 */	mr r30, r3
/* 8054B2AC  4B FF FE A1 */	bl func_8054B14C
/* 8054B2B0  3C 60 80 6A */	lis r3, process_533@ha /* 0x806A4EFC@ha */
/* 8054B2B4  93 FE 09 94 */	stw r31, 0x994(r30)
/* 8054B2B8  57 E6 10 3A */	slwi r6, r31, 2
/* 8054B2BC  3C 80 80 6A */	lis r4, init_proc_534@ha /* 0x806A4F08@ha */
/* 8054B2C0  38 A3 4E FC */	addi r5, r3, process_533@l /* 0x806A4EFC@l */
/* 8054B2C4  7F C3 F3 78 */	mr r3, r30
/* 8054B2C8  7C 05 30 2E */	lwzx r0, r5, r6
/* 8054B2CC  38 84 4F 08 */	addi r4, r4, init_proc_534@l /* 0x806A4F08@l */
/* 8054B2D0  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8054B2D4  7D 84 30 2E */	lwzx r12, r4, r6
/* 8054B2D8  7D 89 03 A6 */	mtctr r12
/* 8054B2DC  4E 80 04 21 */	bctrl 
/* 8054B2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054B2E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054B2EC  7C 08 03 A6 */	mtlr r0
/* 8054B2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B2F4  4E 80 00 20 */	blr 

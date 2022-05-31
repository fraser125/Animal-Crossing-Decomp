lbl_8037FF4C:
/* 8037FF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037FF50  7C 08 02 A6 */	mflr r0
/* 8037FF54  3C 80 80 64 */	lis r4, lit_826@ha /* 0x8064145C@ha */
/* 8037FF58  38 63 1C 14 */	addi r3, r3, 0x1c14
/* 8037FF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037FF60  C0 24 14 5C */	lfs f1, lit_826@l(r4)  /* 0x8064145C@l */
/* 8037FF64  4B FF F2 21 */	bl Camera2_AddCullTimer
/* 8037FF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037FF6C  7C 08 03 A6 */	mtlr r0
/* 8037FF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8037FF74  4E 80 00 20 */	blr 

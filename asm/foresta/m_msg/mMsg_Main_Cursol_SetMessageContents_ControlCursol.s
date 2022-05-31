lbl_803C4570:
/* 803C4570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4574  7C 08 02 A6 */	mflr r0
/* 803C4578  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C457C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4580  7C BF 2B 78 */	mr r31, r5
/* 803C4584  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4588  7C 9E 23 78 */	mr r30, r4
/* 803C458C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4590  4B FF BA B9 */	bl func_803C0048
/* 803C4594  80 1E 00 00 */	lwz r0, 0(r30)
/* 803C4598  7C 00 1A 14 */	add r0, r0, r3
/* 803C459C  7F E3 FB 78 */	mr r3, r31
/* 803C45A0  90 1E 00 00 */	stw r0, 0(r30)
/* 803C45A4  4B FF DD 49 */	bl mMsg_sound_MessageStatus
/* 803C45A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C45AC  38 60 00 00 */	li r3, 0
/* 803C45B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C45B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C45B8  7C 08 03 A6 */	mtlr r0
/* 803C45BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C45C0  4E 80 00 20 */	blr 

lbl_803C39D8:
/* 803C39D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C39DC  7C 08 02 A6 */	mflr r0
/* 803C39E0  7C 85 23 78 */	mr r5, r4
/* 803C39E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C39E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C39EC  7C 7F 1B 78 */	mr r31, r3
/* 803C39F0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803C39F4  80 63 04 0C */	lwz r3, 0x40c(r3)
/* 803C39F8  80 C4 00 08 */	lwz r6, 8(r4)
/* 803C39FC  38 84 00 20 */	addi r4, r4, 0x20
/* 803C3A00  54 60 04 1C */	rlwinm r0, r3, 0, 0x10, 0xe
/* 803C3A04  54 67 03 DE */	rlwinm r7, r3, 0, 0xf, 0xf
/* 803C3A08  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C3A0C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 803C3A10  80 A5 00 00 */	lwz r5, 0(r5)
/* 803C3A14  4B FF D5 E1 */	bl mMsg_CopyTalkName
/* 803C3A18  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C3A1C  90 64 00 08 */	stw r3, 8(r4)
/* 803C3A20  38 60 00 00 */	li r3, 0
/* 803C3A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3A2C  7C 08 03 A6 */	mtlr r0
/* 803C3A30  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3A34  4E 80 00 20 */	blr 

lbl_803C40FC:
/* 803C40FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4100  7C 08 02 A6 */	mflr r0
/* 803C4104  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C410C  7C 7F 1B 78 */	mr r31, r3
/* 803C4110  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 803C4114  80 A4 00 00 */	lwz r5, 0(r4)
/* 803C4118  80 C7 00 08 */	lwz r6, 8(r7)
/* 803C411C  38 87 00 20 */	addi r4, r7, 0x20
/* 803C4120  4B FF D6 B5 */	bl mMsg_CopyDetermination
/* 803C4124  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C4128  90 64 00 08 */	stw r3, 8(r4)
/* 803C412C  38 60 00 00 */	li r3, 0
/* 803C4130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4138  7C 08 03 A6 */	mtlr r0
/* 803C413C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4140  4E 80 00 20 */	blr 
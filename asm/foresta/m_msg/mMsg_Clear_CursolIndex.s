lbl_803C06B4:
/* 803C06B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C06B8  7C 08 02 A6 */	mflr r0
/* 803C06BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C06C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C06C4  7C 7F 1B 78 */	mr r31, r3
/* 803C06C8  80 03 04 20 */	lwz r0, 0x420(r3)
/* 803C06CC  90 03 04 1C */	stw r0, 0x41c(r3)
/* 803C06D0  4B FF FF 7D */	bl mMsg_init_FontColor
/* 803C06D4  7F E3 FB 78 */	mr r3, r31
/* 803C06D8  4B FF FF D1 */	bl mMsg_init_NowDisplayLIne
/* 803C06DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C06E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C06E4  7C 08 03 A6 */	mtlr r0
/* 803C06E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C06EC  4E 80 00 20 */	blr 

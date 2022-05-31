lbl_803C0998:
/* 803C0998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C099C  7C 08 02 A6 */	mflr r0
/* 803C09A0  2C 04 00 00 */	cmpwi r4, 0
/* 803C09A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C09A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C09AC  7C 7F 1B 78 */	mr r31, r3
/* 803C09B0  41 80 00 48 */	blt lbl_803C09F8
/* 803C09B4  2C 04 3F 91 */	cmpwi r4, 0x3f91
/* 803C09B8  40 80 00 40 */	bge lbl_803C09F8
/* 803C09BC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803C09C0  38 A0 00 00 */	li r5, 0
/* 803C09C4  4B FF FE ED */	bl mMsg_LoadMsgData
/* 803C09C8  2C 03 00 00 */	cmpwi r3, 0
/* 803C09CC  41 82 00 2C */	beq lbl_803C09F8
/* 803C09D0  38 00 00 00 */	li r0, 0
/* 803C09D4  7F E3 FB 78 */	mr r3, r31
/* 803C09D8  90 1F 04 20 */	stw r0, 0x420(r31)
/* 803C09DC  4B FF FC D9 */	bl mMsg_Clear_CursolIndex
/* 803C09E0  3C 80 80 64 */	lis r4, lit_926@ha /* 0x8064261C@ha */
/* 803C09E4  7F E3 FB 78 */	mr r3, r31
/* 803C09E8  C0 24 26 1C */	lfs f1, lit_926@l(r4)  /* 0x8064261C@l */
/* 803C09EC  4B FF FD 05 */	bl mMsg_SetTimer
/* 803C09F0  38 60 00 01 */	li r3, 1
/* 803C09F4  48 00 00 08 */	b lbl_803C09FC
lbl_803C09F8:
/* 803C09F8  38 60 00 00 */	li r3, 0
lbl_803C09FC:
/* 803C09FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C0A04  7C 08 03 A6 */	mtlr r0
/* 803C0A08  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0A0C  4E 80 00 20 */	blr 

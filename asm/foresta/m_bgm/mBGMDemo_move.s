lbl_80378C3C:
/* 80378C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80378C40  7C 08 02 A6 */	mflr r0
/* 80378C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80378C4C  7C 7F 1B 78 */	mr r31, r3
/* 80378C50  88 03 00 09 */	lbz r0, 9(r3)
/* 80378C54  28 00 00 00 */	cmplwi r0, 0
/* 80378C58  41 82 00 08 */	beq lbl_80378C60
/* 80378C5C  4B FF FF 9D */	bl mBGMDemo_delete_scene_bgm
lbl_80378C60:
/* 80378C60  88 1F 00 08 */	lbz r0, 8(r31)
/* 80378C64  28 00 00 00 */	cmplwi r0, 0
/* 80378C68  41 82 00 0C */	beq lbl_80378C74
/* 80378C6C  7F E3 FB 78 */	mr r3, r31
/* 80378C70  4B FF FE B9 */	bl mBGMDemo_make_scene_bgm
lbl_80378C74:
/* 80378C74  38 00 00 00 */	li r0, 0
/* 80378C78  98 1F 00 08 */	stb r0, 8(r31)
/* 80378C7C  98 1F 00 09 */	stb r0, 9(r31)
/* 80378C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80378C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378C88  7C 08 03 A6 */	mtlr r0
/* 80378C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80378C90  4E 80 00 20 */	blr 

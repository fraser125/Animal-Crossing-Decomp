lbl_80596468:
/* 80596468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059646C  7C 08 02 A6 */	mflr r0
/* 80596470  90 01 00 34 */	stw r0, 0x34(r1)
/* 80596474  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80596478  3B E0 00 01 */	li r31, 1
/* 8059647C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80596480  7C 7E 1B 78 */	mr r30, r3
/* 80596484  38 61 00 14 */	addi r3, r1, 0x14
/* 80596488  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8059648C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80596490  90 81 00 14 */	stw r4, 0x14(r1)
/* 80596494  90 01 00 18 */	stw r0, 0x18(r1)
/* 80596498  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8059649C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805964A0  4B DF A6 49 */	bl mCoBG_ExistHeightGap_KeepAndNow
/* 805964A4  2C 03 00 01 */	cmpwi r3, 1
/* 805964A8  40 82 00 0C */	bne lbl_805964B4
/* 805964AC  3B E0 00 00 */	li r31, 0
/* 805964B0  48 00 00 A0 */	b lbl_80596550
lbl_805964B4:
/* 805964B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805964B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805964BC  3C 63 00 02 */	addis r3, r3, 2
/* 805964C0  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 805964C4  2C 00 00 01 */	cmpwi r0, 1
/* 805964C8  40 82 00 0C */	bne lbl_805964D4
/* 805964CC  3B E0 00 00 */	li r31, 0
/* 805964D0  48 00 00 80 */	b lbl_80596550
lbl_805964D4:
/* 805964D4  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805964D8  38 61 00 08 */	addi r3, r1, 8
/* 805964DC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805964E0  90 81 00 08 */	stw r4, 8(r1)
/* 805964E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805964E8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805964EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805964F0  4B E1 0F 41 */	bl mFI_GetUnitFG
/* 805964F4  28 03 00 00 */	cmplwi r3, 0
/* 805964F8  41 82 00 10 */	beq lbl_80596508
/* 805964FC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80596500  28 00 FF FF */	cmplwi r0, 0xffff
/* 80596504  40 82 00 0C */	bne lbl_80596510
lbl_80596508:
/* 80596508  3B E0 00 00 */	li r31, 0
/* 8059650C  48 00 00 44 */	b lbl_80596550
lbl_80596510:
/* 80596510  28 00 00 11 */	cmplwi r0, 0x11
/* 80596514  41 80 00 14 */	blt lbl_80596528
/* 80596518  28 00 00 29 */	cmplwi r0, 0x29
/* 8059651C  41 81 00 0C */	bgt lbl_80596528
/* 80596520  3B E0 00 00 */	li r31, 0
/* 80596524  48 00 00 2C */	b lbl_80596550
lbl_80596528:
/* 80596528  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8059652C  2C 00 00 04 */	cmpwi r0, 4
/* 80596530  41 82 00 20 */	beq lbl_80596550
/* 80596534  40 80 00 10 */	bge lbl_80596544
/* 80596538  2C 00 00 01 */	cmpwi r0, 1
/* 8059653C  40 80 00 10 */	bge lbl_8059654C
/* 80596540  48 00 00 10 */	b lbl_80596550
lbl_80596544:
/* 80596544  2C 00 00 06 */	cmpwi r0, 6
/* 80596548  40 80 00 08 */	bge lbl_80596550
lbl_8059654C:
/* 8059654C  3B E0 00 00 */	li r31, 0
lbl_80596550:
/* 80596550  2C 1F 00 00 */	cmpwi r31, 0
/* 80596554  40 82 00 14 */	bne lbl_80596568
/* 80596558  88 1E 02 1E */	lbz r0, 0x21e(r30)
/* 8059655C  38 60 00 01 */	li r3, 1
/* 80596560  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80596564  98 1E 02 1E */	stb r0, 0x21e(r30)
lbl_80596568:
/* 80596568  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059656C  7F E3 FB 78 */	mr r3, r31
/* 80596570  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80596574  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80596578  7C 08 03 A6 */	mtlr r0
/* 8059657C  38 21 00 30 */	addi r1, r1, 0x30
/* 80596580  4E 80 00 20 */	blr 

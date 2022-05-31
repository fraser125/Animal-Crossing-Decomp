lbl_80515B84:
/* 80515B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80515B88  7C 08 02 A6 */	mflr r0
/* 80515B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80515B90  39 61 00 20 */	addi r11, r1, 0x20
/* 80515B94  4B B8 53 3D */	bl func_8009AED0
/* 80515B98  7C 9C 23 78 */	mr r28, r4
/* 80515B9C  7C 7F 1B 78 */	mr r31, r3
/* 80515BA0  7F 83 E3 78 */	mr r3, r28
/* 80515BA4  4B EC 3A 9D */	bl get_player_actor_withoutCheck
/* 80515BA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80515BAC  41 82 00 D4 */	beq lbl_80515C80
/* 80515BB0  80 1E 13 8C */	lwz r0, 0x138c(r30)
/* 80515BB4  3B BC 1D EC */	addi r29, r28, 0x1dec
/* 80515BB8  2C 00 00 01 */	cmpwi r0, 1
/* 80515BBC  40 82 00 C4 */	bne lbl_80515C80
/* 80515BC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80515BC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80515BC8  3C 63 00 03 */	addis r3, r3, 3
/* 80515BCC  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 80515BD0  28 00 00 00 */	cmplwi r0, 0
/* 80515BD4  40 82 00 AC */	bne lbl_80515C80
/* 80515BD8  88 1D 01 65 */	lbz r0, 0x165(r29)
/* 80515BDC  28 00 00 00 */	cmplwi r0, 0
/* 80515BE0  40 82 00 A0 */	bne lbl_80515C80
/* 80515BE4  88 1D 01 66 */	lbz r0, 0x166(r29)
/* 80515BE8  28 00 00 00 */	cmplwi r0, 0
/* 80515BEC  40 82 00 94 */	bne lbl_80515C80
/* 80515BF0  7F 83 E3 78 */	mr r3, r28
/* 80515BF4  4B EC 5A F1 */	bl mPlib_able_submenu_type1
/* 80515BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80515BFC  41 82 00 84 */	beq lbl_80515C80
/* 80515C00  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 80515C04  3C 63 00 01 */	addis r3, r3, 1
/* 80515C08  38 63 80 00 */	addi r3, r3, -32768
/* 80515C0C  7C 60 07 35 */	extsh. r0, r3
/* 80515C10  7C 60 07 34 */	extsh r0, r3
/* 80515C14  7C 60 00 D0 */	neg r3, r0
/* 80515C18  41 80 00 08 */	blt lbl_80515C20
/* 80515C1C  7C 03 03 78 */	mr r3, r0
lbl_80515C20:
/* 80515C20  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80515C24  40 80 00 5C */	bge lbl_80515C80
/* 80515C28  A0 1E 13 94 */	lhz r0, 0x1394(r30)
/* 80515C2C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80515C30  40 80 00 50 */	bge lbl_80515C80
/* 80515C34  2C 00 00 0E */	cmpwi r0, 0xe
/* 80515C38  40 80 00 08 */	bge lbl_80515C40
/* 80515C3C  48 00 00 44 */	b lbl_80515C80
lbl_80515C40:
/* 80515C40  38 7F 01 84 */	addi r3, r31, 0x184
/* 80515C44  4B EA 96 01 */	bl mMld_GetMelody
/* 80515C48  7F A3 EB 78 */	mr r3, r29
/* 80515C4C  7F E7 FB 78 */	mr r7, r31
/* 80515C50  39 1F 01 84 */	addi r8, r31, 0x184
/* 80515C54  38 80 00 08 */	li r4, 8
/* 80515C58  38 A0 00 00 */	li r5, 0
/* 80515C5C  38 C0 00 00 */	li r6, 0
/* 80515C60  4B ED 9A C9 */	bl mSM_open_submenu_new2
/* 80515C64  38 60 00 00 */	li r3, 0
/* 80515C68  38 00 00 01 */	li r0, 1
/* 80515C6C  90 7E 13 8C */	stw r3, 0x138c(r30)
/* 80515C70  7F E3 FB 78 */	mr r3, r31
/* 80515C74  38 80 00 01 */	li r4, 1
/* 80515C78  90 1E 13 90 */	stw r0, 0x1390(r30)
/* 80515C7C  48 00 06 6D */	bl aMSC_setupAction
lbl_80515C80:
/* 80515C80  39 61 00 20 */	addi r11, r1, 0x20
/* 80515C84  4B B8 52 99 */	bl func_8009AF1C
/* 80515C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80515C8C  7C 08 03 A6 */	mtlr r0
/* 80515C90  38 21 00 20 */	addi r1, r1, 0x20
/* 80515C94  4E 80 00 20 */	blr 

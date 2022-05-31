lbl_803EF890:
/* 803EF890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EF894  7C 08 02 A6 */	mflr r0
/* 803EF898  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EF89C  39 61 00 20 */	addi r11, r1, 0x20
/* 803EF8A0  4B CA B6 35 */	bl func_8009AED4
/* 803EF8A4  7C 7E 1B 78 */	mr r30, r3
/* 803EF8A8  3B FE 1D EC */	addi r31, r30, 0x1dec
/* 803EF8AC  80 03 1D F8 */	lwz r0, 0x1df8(r3)
/* 803EF8B0  2C 00 00 00 */	cmpwi r0, 0
/* 803EF8B4  40 82 02 08 */	bne lbl_803EFABC
/* 803EF8B8  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 803EF8BC  28 00 00 00 */	cmplwi r0, 0
/* 803EF8C0  40 82 01 FC */	bne lbl_803EFABC
/* 803EF8C4  88 1E 20 D3 */	lbz r0, 0x20d3(r30)
/* 803EF8C8  28 00 00 00 */	cmplwi r0, 0
/* 803EF8CC  40 82 01 F0 */	bne lbl_803EFABC
/* 803EF8D0  3B A0 00 00 */	li r29, 0
/* 803EF8D4  38 60 10 00 */	li r3, 0x1000
/* 803EF8D8  4B FA 66 39 */	bl chkTrigger
/* 803EF8DC  2C 03 00 00 */	cmpwi r3, 0
/* 803EF8E0  40 82 00 14 */	bne lbl_803EF8F4
/* 803EF8E4  38 60 00 80 */	li r3, 0x80
/* 803EF8E8  4B FA 66 29 */	bl chkTrigger
/* 803EF8EC  2C 03 00 00 */	cmpwi r3, 0
/* 803EF8F0  41 82 00 08 */	beq lbl_803EF8F8
lbl_803EF8F4:
/* 803EF8F4  3B A0 00 01 */	li r29, 1
lbl_803EF8F8:
/* 803EF8F8  2C 1D 00 00 */	cmpwi r29, 0
/* 803EF8FC  41 82 00 1C */	beq lbl_803EF918
/* 803EF900  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EF904  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EF908  3C 63 00 03 */	addis r3, r3, 3
/* 803EF90C  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 803EF910  28 00 00 00 */	cmplwi r0, 0
/* 803EF914  41 82 00 2C */	beq lbl_803EF940
lbl_803EF918:
/* 803EF918  7F C3 F3 78 */	mr r3, r30
/* 803EF91C  4B FF FE 8D */	bl mSM_check_open_map_new
/* 803EF920  2C 03 00 01 */	cmpwi r3, 1
/* 803EF924  40 82 00 90 */	bne lbl_803EF9B4
/* 803EF928  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EF92C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EF930  3C 63 00 03 */	addis r3, r3, 3
/* 803EF934  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 803EF938  28 00 00 00 */	cmplwi r0, 0
/* 803EF93C  40 82 00 78 */	bne lbl_803EF9B4
lbl_803EF940:
/* 803EF940  88 1F 01 65 */	lbz r0, 0x165(r31)
/* 803EF944  28 00 00 00 */	cmplwi r0, 0
/* 803EF948  40 82 00 6C */	bne lbl_803EF9B4
/* 803EF94C  88 1F 01 66 */	lbz r0, 0x166(r31)
/* 803EF950  28 00 00 00 */	cmplwi r0, 0
/* 803EF954  40 82 00 60 */	bne lbl_803EF9B4
/* 803EF958  7F C3 F3 78 */	mr r3, r30
/* 803EF95C  4B FE BD 89 */	bl mPlib_able_submenu_type1
/* 803EF960  2C 03 00 00 */	cmpwi r3, 0
/* 803EF964  41 82 00 50 */	beq lbl_803EF9B4
/* 803EF968  4B FA B3 C5 */	bl mEv_CheckFirstIntro
/* 803EF96C  2C 03 00 00 */	cmpwi r3, 0
/* 803EF970  40 82 00 44 */	bne lbl_803EF9B4
/* 803EF974  2C 1D 00 00 */	cmpwi r29, 0
/* 803EF978  41 82 00 1C */	beq lbl_803EF994
/* 803EF97C  7F E3 FB 78 */	mr r3, r31
/* 803EF980  38 80 00 01 */	li r4, 1
/* 803EF984  38 A0 00 00 */	li r5, 0
/* 803EF988  38 C0 00 00 */	li r6, 0
/* 803EF98C  4B FF FD 51 */	bl mSM_open_submenu
/* 803EF990  48 00 00 18 */	b lbl_803EF9A8
lbl_803EF994:
/* 803EF994  7F E3 FB 78 */	mr r3, r31
/* 803EF998  38 80 00 05 */	li r4, 5
/* 803EF99C  38 A0 00 01 */	li r5, 1
/* 803EF9A0  38 C0 00 00 */	li r6, 0
/* 803EF9A4  4B FF FD 39 */	bl mSM_open_submenu
lbl_803EF9A8:
/* 803EF9A8  7F C3 F3 78 */	mr r3, r30
/* 803EF9AC  4B FF FD CD */	bl mSM_Reset_player_btn_type2
/* 803EF9B0  48 00 00 EC */	b lbl_803EFA9C
lbl_803EF9B4:
/* 803EF9B4  7F C3 F3 78 */	mr r3, r30
/* 803EF9B8  4B FE 9C 89 */	bl get_player_actor_withoutCheck
/* 803EF9BC  7C 7D 1B 79 */	or. r29, r3, r3
/* 803EF9C0  41 82 00 DC */	beq lbl_803EFA9C
/* 803EF9C4  80 1D 13 8C */	lwz r0, 0x138c(r29)
/* 803EF9C8  2C 00 00 01 */	cmpwi r0, 1
/* 803EF9CC  40 82 00 D0 */	bne lbl_803EFA9C
/* 803EF9D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EF9D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EF9D8  3C 63 00 03 */	addis r3, r3, 3
/* 803EF9DC  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 803EF9E0  28 00 00 00 */	cmplwi r0, 0
/* 803EF9E4  40 82 00 B8 */	bne lbl_803EFA9C
/* 803EF9E8  88 1F 01 65 */	lbz r0, 0x165(r31)
/* 803EF9EC  28 00 00 00 */	cmplwi r0, 0
/* 803EF9F0  40 82 00 AC */	bne lbl_803EFA9C
/* 803EF9F4  88 1F 01 66 */	lbz r0, 0x166(r31)
/* 803EF9F8  28 00 00 00 */	cmplwi r0, 0
/* 803EF9FC  40 82 00 A0 */	bne lbl_803EFA9C
/* 803EFA00  7F C3 F3 78 */	mr r3, r30
/* 803EFA04  4B FE BC E1 */	bl mPlib_able_submenu_type1
/* 803EFA08  2C 03 00 00 */	cmpwi r3, 0
/* 803EFA0C  41 82 00 90 */	beq lbl_803EFA9C
/* 803EFA10  A8 7D 00 DE */	lha r3, 0xde(r29)
/* 803EFA14  3C 63 00 01 */	addis r3, r3, 1
/* 803EFA18  38 63 80 00 */	addi r3, r3, -32768
/* 803EFA1C  7C 60 07 35 */	extsh. r0, r3
/* 803EFA20  7C 60 07 34 */	extsh r0, r3
/* 803EFA24  7C 60 00 D0 */	neg r3, r0
/* 803EFA28  41 80 00 08 */	blt lbl_803EFA30
/* 803EFA2C  7C 03 03 78 */	mr r3, r0
lbl_803EFA30:
/* 803EFA30  2C 03 20 00 */	cmpwi r3, 0x2000
/* 803EFA34  40 80 00 68 */	bge lbl_803EFA9C
/* 803EFA38  A0 1D 13 94 */	lhz r0, 0x1394(r29)
/* 803EFA3C  2C 00 00 0B */	cmpwi r0, 0xb
/* 803EFA40  41 82 00 20 */	beq lbl_803EFA60
/* 803EFA44  40 80 00 10 */	bge lbl_803EFA54
/* 803EFA48  2C 00 00 07 */	cmpwi r0, 7
/* 803EFA4C  41 82 00 14 */	beq lbl_803EFA60
/* 803EFA50  48 00 00 4C */	b lbl_803EFA9C
lbl_803EFA54:
/* 803EFA54  2C 00 00 0E */	cmpwi r0, 0xe
/* 803EFA58  40 80 00 44 */	bge lbl_803EFA9C
/* 803EFA5C  48 00 00 24 */	b lbl_803EFA80
lbl_803EFA60:
/* 803EFA60  7F E3 FB 78 */	mr r3, r31
/* 803EFA64  38 80 00 06 */	li r4, 6
/* 803EFA68  38 A0 00 00 */	li r5, 0
/* 803EFA6C  38 C0 00 00 */	li r6, 0
/* 803EFA70  4B FF FC 6D */	bl mSM_open_submenu
/* 803EFA74  7F C3 F3 78 */	mr r3, r30
/* 803EFA78  4B FF FC C9 */	bl mSM_Reset_player_btn_type1
/* 803EFA7C  48 00 00 20 */	b lbl_803EFA9C
lbl_803EFA80:
/* 803EFA80  7F E3 FB 78 */	mr r3, r31
/* 803EFA84  38 80 00 05 */	li r4, 5
/* 803EFA88  38 A0 00 00 */	li r5, 0
/* 803EFA8C  38 C0 00 00 */	li r6, 0
/* 803EFA90  4B FF FC 4D */	bl mSM_open_submenu
/* 803EFA94  7F C3 F3 78 */	mr r3, r30
/* 803EFA98  4B FF FC A9 */	bl mSM_Reset_player_btn_type1
lbl_803EFA9C:
/* 803EFA9C  80 1F 00 04 */	lwz r0, 4(r31)
/* 803EFAA0  2C 00 00 00 */	cmpwi r0, 0
/* 803EFAA4  41 82 00 18 */	beq lbl_803EFABC
/* 803EFAA8  38 00 00 01 */	li r0, 1
/* 803EFAAC  38 60 00 01 */	li r3, 1
/* 803EFAB0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803EFAB4  90 1F 00 00 */	stw r0, 0(r31)
/* 803EFAB8  48 01 53 7D */	bl SetGameFrame
lbl_803EFABC:
/* 803EFABC  39 61 00 20 */	addi r11, r1, 0x20
/* 803EFAC0  4B CA B4 61 */	bl func_8009AF20
/* 803EFAC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EFAC8  7C 08 03 A6 */	mtlr r0
/* 803EFACC  38 21 00 20 */	addi r1, r1, 0x20
/* 803EFAD0  4E 80 00 20 */	blr 

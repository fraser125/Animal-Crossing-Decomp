lbl_804CECA8:
/* 804CECA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CECAC  7C 08 02 A6 */	mflr r0
/* 804CECB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CECB4  38 A0 00 00 */	li r5, 0
/* 804CECB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CECBC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CECC0  3C 84 00 02 */	addis r4, r4, 2
/* 804CECC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CECC8  7C 7F 1B 78 */	mr r31, r3
/* 804CECCC  88 04 60 01 */	lbz r0, 0x6001(r4)
/* 804CECD0  2C 00 00 01 */	cmpwi r0, 1
/* 804CECD4  41 82 00 64 */	beq lbl_804CED38
/* 804CECD8  41 80 00 68 */	blt lbl_804CED40
/* 804CECDC  2C 00 00 04 */	cmpwi r0, 4
/* 804CECE0  40 80 00 60 */	bge lbl_804CED40
/* 804CECE4  4B ED 5F E9 */	bl mFI_GetFieldId
/* 804CECE8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804CECEC  2C 00 60 00 */	cmpwi r0, 0x6000
/* 804CECF0  40 80 00 18 */	bge lbl_804CED08
/* 804CECF4  2C 00 50 02 */	cmpwi r0, 0x5002
/* 804CECF8  40 80 00 34 */	bge lbl_804CED2C
/* 804CECFC  2C 00 50 00 */	cmpwi r0, 0x5000
/* 804CED00  40 80 00 20 */	bge lbl_804CED20
/* 804CED04  48 00 00 28 */	b lbl_804CED2C
lbl_804CED08:
/* 804CED08  2C 00 60 04 */	cmpwi r0, 0x6004
/* 804CED0C  40 80 00 20 */	bge lbl_804CED2C
/* 804CED10  7F E3 FB 78 */	mr r3, r31
/* 804CED14  4B FF FF 35 */	bl eLL_get_light_sw_player_room
/* 804CED18  7C 65 1B 78 */	mr r5, r3
/* 804CED1C  48 00 00 24 */	b lbl_804CED40
lbl_804CED20:
/* 804CED20  4B FF FF 65 */	bl eLL_get_light_sw_start_demo
/* 804CED24  7C 65 1B 78 */	mr r5, r3
/* 804CED28  48 00 00 18 */	b lbl_804CED40
lbl_804CED2C:
/* 804CED2C  4B FF FE E9 */	bl eLL_get_light_sw_other_room
/* 804CED30  7C 65 1B 78 */	mr r5, r3
/* 804CED34  48 00 00 0C */	b lbl_804CED40
lbl_804CED38:
/* 804CED38  4B FF FF 11 */	bl eLL_get_light_sw_player_room
/* 804CED3C  7C 65 1B 78 */	mr r5, r3
lbl_804CED40:
/* 804CED40  90 BF 01 74 */	stw r5, 0x174(r31)
/* 804CED44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CED48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CED4C  7C 08 03 A6 */	mtlr r0
/* 804CED50  38 21 00 10 */	addi r1, r1, 0x10
/* 804CED54  4E 80 00 20 */	blr 

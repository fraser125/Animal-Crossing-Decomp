lbl_8056F720:
/* 8056F720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056F724  7C 08 02 A6 */	mflr r0
/* 8056F728  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056F72C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056F730  4B B2 B7 A5 */	bl func_8009AED4
/* 8056F734  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8056F738  7C 7D 1B 78 */	mr r29, r3
/* 8056F73C  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 8056F740  7C 9E 23 78 */	mr r30, r4
/* 8056F744  80 63 00 00 */	lwz r3, 0(r3)
/* 8056F748  3B E0 FF FF */	li r31, -1
/* 8056F74C  4B E6 9E F5 */	bl get_player_actor_withoutCheck
/* 8056F750  80 03 12 14 */	lwz r0, 0x1214(r3)
/* 8056F754  2C 00 00 00 */	cmpwi r0, 0
/* 8056F758  41 82 00 0C */	beq lbl_8056F764
/* 8056F75C  3B E0 00 07 */	li r31, 7
/* 8056F760  48 00 00 5C */	b lbl_8056F7BC
lbl_8056F764:
/* 8056F764  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056F768  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056F76C  3C 63 00 02 */	addis r3, r3, 2
/* 8056F770  80 63 60 AC */	lwz r3, 0x60ac(r3)
/* 8056F774  28 03 00 00 */	cmplwi r3, 0
/* 8056F778  41 82 00 44 */	beq lbl_8056F7BC
/* 8056F77C  80 03 00 04 */	lwz r0, 4(r3)
/* 8056F780  2C 00 00 01 */	cmpwi r0, 1
/* 8056F784  40 82 00 38 */	bne lbl_8056F7BC
/* 8056F788  80 63 00 00 */	lwz r3, 0(r3)
/* 8056F78C  28 03 00 00 */	cmplwi r3, 0
/* 8056F790  41 82 00 2C */	beq lbl_8056F7BC
/* 8056F794  80 03 01 90 */	lwz r0, 0x190(r3)
/* 8056F798  2C 00 00 02 */	cmpwi r0, 2
/* 8056F79C  41 82 00 1C */	beq lbl_8056F7B8
/* 8056F7A0  40 80 00 1C */	bge lbl_8056F7BC
/* 8056F7A4  2C 00 00 01 */	cmpwi r0, 1
/* 8056F7A8  40 80 00 08 */	bge lbl_8056F7B0
/* 8056F7AC  48 00 00 10 */	b lbl_8056F7BC
lbl_8056F7B0:
/* 8056F7B0  3B E0 00 08 */	li r31, 8
/* 8056F7B4  48 00 00 08 */	b lbl_8056F7BC
lbl_8056F7B8:
/* 8056F7B8  3B E0 00 09 */	li r31, 9
lbl_8056F7BC:
/* 8056F7BC  2C 1F 00 00 */	cmpwi r31, 0
/* 8056F7C0  41 80 00 14 */	blt lbl_8056F7D4
/* 8056F7C4  7F A3 EB 78 */	mr r3, r29
/* 8056F7C8  7F C4 F3 78 */	mr r4, r30
/* 8056F7CC  7F E5 FB 78 */	mr r5, r31
/* 8056F7D0  48 00 05 A9 */	bl aNRG_setup_think_proc
lbl_8056F7D4:
/* 8056F7D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8056F7D8  4B B2 B7 49 */	bl func_8009AF20
/* 8056F7DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056F7E0  7C 08 03 A6 */	mtlr r0
/* 8056F7E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8056F7E8  4E 80 00 20 */	blr 

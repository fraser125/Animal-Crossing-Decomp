lbl_804287FC:
/* 804287FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80428800  7C 08 02 A6 */	mflr r0
/* 80428804  90 01 00 24 */	stw r0, 0x24(r1)
/* 80428808  39 61 00 20 */	addi r11, r1, 0x20
/* 8042880C  4B C7 26 C5 */	bl func_8009AED0
/* 80428810  7C 7C 1B 78 */	mr r28, r3
/* 80428814  7C 9D 23 78 */	mr r29, r4
/* 80428818  88 83 02 83 */	lbz r4, 0x283(r3)
/* 8042881C  38 7D 1D A8 */	addi r3, r29, 0x1da8
/* 80428820  38 A0 00 01 */	li r5, 1
/* 80428824  38 04 58 00 */	addi r0, r4, 0x5800
/* 80428828  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8042882C  4B F4 D5 15 */	bl Actor_info_fgName_search
/* 80428830  7C 7F 1B 79 */	or. r31, r3, r3
/* 80428834  41 82 00 60 */	beq lbl_80428894
/* 80428838  38 00 00 06 */	li r0, 6
/* 8042883C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80428840  90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 80428844  83 C3 52 F0 */	lwz r30, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 80428848  7F C3 F3 78 */	mr r3, r30
/* 8042884C  4B FB 0D F5 */	bl get_player_actor_withoutCheck
/* 80428850  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 80428854  7F C3 F3 78 */	mr r3, r30
/* 80428858  7D 89 03 A6 */	mtctr r12
/* 8042885C  4E 80 04 21 */	bctrl 
/* 80428860  7C 1F 18 40 */	cmplw r31, r3
/* 80428864  41 82 00 20 */	beq lbl_80428884
/* 80428868  7F 83 E3 78 */	mr r3, r28
/* 8042886C  7F A4 EB 78 */	mr r4, r29
/* 80428870  38 A0 00 10 */	li r5, 0x10
/* 80428874  48 00 01 E1 */	bl aHNW_setupAction
/* 80428878  38 00 00 00 */	li r0, 0
/* 8042887C  B0 1C 02 80 */	sth r0, 0x280(r28)
/* 80428880  48 00 00 14 */	b lbl_80428894
lbl_80428884:
/* 80428884  7F 83 E3 78 */	mr r3, r28
/* 80428888  7F A4 EB 78 */	mr r4, r29
/* 8042888C  38 A0 00 00 */	li r5, 0
/* 80428890  48 00 01 C5 */	bl aHNW_setupAction
lbl_80428894:
/* 80428894  39 61 00 20 */	addi r11, r1, 0x20
/* 80428898  4B C7 26 85 */	bl func_8009AF1C
/* 8042889C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804288A0  7C 08 03 A6 */	mtlr r0
/* 804288A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804288A8  4E 80 00 20 */	blr 

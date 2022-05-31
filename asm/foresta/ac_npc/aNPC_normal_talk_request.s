lbl_8052E9B8:
/* 8052E9B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052E9BC  7C 08 02 A6 */	mflr r0
/* 8052E9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052E9C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E9C8  4B B6 C5 0D */	bl func_8009AED4
/* 8052E9CC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052E9D0  7C 9D 23 78 */	mr r29, r4
/* 8052E9D4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052E9D8  7C 7F 1B 78 */	mr r31, r3
/* 8052E9DC  3C 85 00 02 */	addis r4, r5, 2
/* 8052E9E0  3B C0 00 00 */	li r30, 0
/* 8052E9E4  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 8052E9E8  81 84 00 00 */	lwz r12, 0(r4)
/* 8052E9EC  28 0C 00 00 */	cmplwi r12, 0
/* 8052E9F0  41 82 00 2C */	beq lbl_8052EA1C
/* 8052E9F4  7D 89 03 A6 */	mtctr r12
/* 8052E9F8  4E 80 04 21 */	bctrl 
/* 8052E9FC  2C 03 00 01 */	cmpwi r3, 1
/* 8052EA00  40 82 00 1C */	bne lbl_8052EA1C
/* 8052EA04  38 00 00 00 */	li r0, 0
/* 8052EA08  7F E3 FB 78 */	mr r3, r31
/* 8052EA0C  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8052EA10  7F A4 EB 78 */	mr r4, r29
/* 8052EA14  4B FF FD 59 */	bl aNPC_setup_talk_start
/* 8052EA18  3B C0 00 01 */	li r30, 1
lbl_8052EA1C:
/* 8052EA1C  7F C3 F3 78 */	mr r3, r30
/* 8052EA20  39 61 00 20 */	addi r11, r1, 0x20
/* 8052EA24  4B B6 C4 FD */	bl func_8009AF20
/* 8052EA28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052EA2C  7C 08 03 A6 */	mtlr r0
/* 8052EA30  38 21 00 20 */	addi r1, r1, 0x20
/* 8052EA34  4E 80 00 20 */	blr 

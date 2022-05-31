lbl_8052BB58:
/* 8052BB58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052BB5C  7C 08 02 A6 */	mflr r0
/* 8052BB60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052BB64  39 61 00 20 */	addi r11, r1, 0x20
/* 8052BB68  4B B6 F3 6D */	bl func_8009AED4
/* 8052BB6C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052BB70  7C 7E 1B 78 */	mr r30, r3
/* 8052BB74  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052BB78  7C 9D 23 78 */	mr r29, r4
/* 8052BB7C  3F E5 00 02 */	addis r31, r5, 2
/* 8052BB80  38 C0 00 01 */	li r6, 1
/* 8052BB84  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8052BB88  38 A0 FF FF */	li r5, -1
/* 8052BB8C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8052BB90  7D 89 03 A6 */	mtctr r12
/* 8052BB94  4E 80 04 21 */	bctrl 
/* 8052BB98  2C 03 00 00 */	cmpwi r3, 0
/* 8052BB9C  40 82 00 28 */	bne lbl_8052BBC4
/* 8052BBA0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8052BBA4  7F C3 F3 78 */	mr r3, r30
/* 8052BBA8  7F A4 EB 78 */	mr r4, r29
/* 8052BBAC  38 A0 FF FF */	li r5, -1
/* 8052BBB0  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8052BBB4  38 C0 00 02 */	li r6, 2
/* 8052BBB8  7D 89 03 A6 */	mtctr r12
/* 8052BBBC  4E 80 04 21 */	bctrl 
/* 8052BBC0  48 00 00 38 */	b lbl_8052BBF8
lbl_8052BBC4:
/* 8052BBC4  88 1E 09 5A */	lbz r0, 0x95a(r30)
/* 8052BBC8  28 00 00 01 */	cmplwi r0, 1
/* 8052BBCC  40 82 00 2C */	bne lbl_8052BBF8
/* 8052BBD0  88 1E 09 A6 */	lbz r0, 0x9a6(r30)
/* 8052BBD4  28 00 00 09 */	cmplwi r0, 9
/* 8052BBD8  40 82 00 20 */	bne lbl_8052BBF8
/* 8052BBDC  88 DE 09 A2 */	lbz r6, 0x9a2(r30)
/* 8052BBE0  7F C3 F3 78 */	mr r3, r30
/* 8052BBE4  7F A4 EB 78 */	mr r4, r29
/* 8052BBE8  38 A0 00 21 */	li r5, 0x21
/* 8052BBEC  38 06 FF FF */	addi r0, r6, -1
/* 8052BBF0  98 1E 09 A4 */	stb r0, 0x9a4(r30)
/* 8052BBF4  4B FF FE 55 */	bl aHN0_setup_think_proc
lbl_8052BBF8:
/* 8052BBF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8052BBFC  4B B6 F3 25 */	bl func_8009AF20
/* 8052BC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052BC04  7C 08 03 A6 */	mtlr r0
/* 8052BC08  38 21 00 20 */	addi r1, r1, 0x20
/* 8052BC0C  4E 80 00 20 */	blr 

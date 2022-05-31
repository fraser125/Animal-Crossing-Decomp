lbl_80476568:
/* 80476568  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047656C  7C 08 02 A6 */	mflr r0
/* 80476570  90 01 00 34 */	stw r0, 0x34(r1)
/* 80476574  39 61 00 30 */	addi r11, r1, 0x30
/* 80476578  4B C2 49 5D */	bl func_8009AED4
/* 8047657C  7C 7D 1B 78 */	mr r29, r3
/* 80476580  4B F0 CF C1 */	bl func_80383540
/* 80476584  7C 7E 1B 78 */	mr r30, r3
/* 80476588  4B F0 D0 ED */	bl mChoice_check_main_index
/* 8047658C  2C 03 00 00 */	cmpwi r3, 0
/* 80476590  41 82 00 08 */	beq lbl_80476598
/* 80476594  48 00 00 9C */	b lbl_80476630
lbl_80476598:
/* 80476598  3C 80 81 1D */	lis r4, cancel_string_2109@ha /* 0x811CE6C8@ha */
/* 8047659C  7F C3 F3 78 */	mr r3, r30
/* 804765A0  38 84 E6 C8 */	addi r4, r4, cancel_string_2109@l /* 0x811CE6C8@l */
/* 804765A4  38 A0 01 AB */	li r5, 0x1ab
/* 804765A8  38 C0 00 00 */	li r6, 0
/* 804765AC  4B F0 DE 15 */	bl mChoice_Load_ChoseStringFromRom
/* 804765B0  3C 80 81 1D */	lis r4, else_string_2110@ha /* 0x811CE6D8@ha */
/* 804765B4  7F C3 F3 78 */	mr r3, r30
/* 804765B8  38 84 E6 D8 */	addi r4, r4, else_string_2110@l /* 0x811CE6D8@l */
/* 804765BC  38 A0 02 35 */	li r5, 0x235
/* 804765C0  38 C0 00 00 */	li r6, 0
/* 804765C4  4B F0 DD FD */	bl mChoice_Load_ChoseStringFromRom
/* 804765C8  80 9D 04 9C */	lwz r4, 0x49c(r29)
/* 804765CC  7F A3 EB 78 */	mr r3, r29
/* 804765D0  38 84 00 01 */	addi r4, r4, 1
/* 804765D4  4B FF DA ED */	bl aMR_GetNameString
/* 804765D8  80 9D 04 9C */	lwz r4, 0x49c(r29)
/* 804765DC  7C 7F 1B 78 */	mr r31, r3
/* 804765E0  7F A3 EB 78 */	mr r3, r29
/* 804765E4  4B FF DA DD */	bl aMR_GetNameString
/* 804765E8  39 20 00 10 */	li r9, 0x10
/* 804765EC  7C 64 1B 78 */	mr r4, r3
/* 804765F0  91 21 00 08 */	stw r9, 8(r1)
/* 804765F4  38 00 00 00 */	li r0, 0
/* 804765F8  3C A0 81 1D */	lis r5, else_string_2110@ha /* 0x811CE6D8@ha */
/* 804765FC  3C 60 81 1D */	lis r3, cancel_string_2109@ha /* 0x811CE6C8@ha */
/* 80476600  90 01 00 0C */	stw r0, 0xc(r1)
/* 80476604  39 05 E6 D8 */	addi r8, r5, else_string_2110@l /* 0x811CE6D8@l */
/* 80476608  39 43 E6 C8 */	addi r10, r3, cancel_string_2109@l /* 0x811CE6C8@l */
/* 8047660C  7F C3 F3 78 */	mr r3, r30
/* 80476610  91 21 00 10 */	stw r9, 0x10(r1)
/* 80476614  7F E6 FB 78 */	mr r6, r31
/* 80476618  38 A0 00 10 */	li r5, 0x10
/* 8047661C  38 E0 00 10 */	li r7, 0x10
/* 80476620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476624  91 21 00 18 */	stw r9, 0x18(r1)
/* 80476628  39 20 00 10 */	li r9, 0x10
/* 8047662C  4B F0 D1 39 */	bl mChoice_Set_choice_data
lbl_80476630:
/* 80476630  39 61 00 30 */	addi r11, r1, 0x30
/* 80476634  4B C2 48 ED */	bl func_8009AF20
/* 80476638  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047663C  7C 08 03 A6 */	mtlr r0
/* 80476640  38 21 00 30 */	addi r1, r1, 0x30
/* 80476644  4E 80 00 20 */	blr 

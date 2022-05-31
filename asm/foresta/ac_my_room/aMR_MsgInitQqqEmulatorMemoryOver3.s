lbl_80476174:
/* 80476174  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80476178  7C 08 02 A6 */	mflr r0
/* 8047617C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80476180  39 61 00 30 */	addi r11, r1, 0x30
/* 80476184  4B C2 4D 51 */	bl func_8009AED4
/* 80476188  7C 7D 1B 78 */	mr r29, r3
/* 8047618C  4B F0 D3 B5 */	bl func_80383540
/* 80476190  3C 80 81 1D */	lis r4, cancel_string_2060@ha /* 0x811CE688@ha */
/* 80476194  38 A0 01 AB */	li r5, 0x1ab
/* 80476198  38 84 E6 88 */	addi r4, r4, cancel_string_2060@l /* 0x811CE688@l */
/* 8047619C  7C 7E 1B 78 */	mr r30, r3
/* 804761A0  38 C0 00 00 */	li r6, 0
/* 804761A4  4B F0 E2 1D */	bl mChoice_Load_ChoseStringFromRom
/* 804761A8  3C 80 81 1D */	lis r4, else_string_2061@ha /* 0x811CE698@ha */
/* 804761AC  7F C3 F3 78 */	mr r3, r30
/* 804761B0  38 84 E6 98 */	addi r4, r4, else_string_2061@l /* 0x811CE698@l */
/* 804761B4  38 A0 02 35 */	li r5, 0x235
/* 804761B8  38 C0 00 00 */	li r6, 0
/* 804761BC  4B F0 E2 05 */	bl mChoice_Load_ChoseStringFromRom
/* 804761C0  7F A3 EB 78 */	mr r3, r29
/* 804761C4  38 80 00 01 */	li r4, 1
/* 804761C8  4B FF DE F9 */	bl aMR_GetNameString
/* 804761CC  7C 7F 1B 78 */	mr r31, r3
/* 804761D0  7F A3 EB 78 */	mr r3, r29
/* 804761D4  38 80 00 00 */	li r4, 0
/* 804761D8  4B FF DE E9 */	bl aMR_GetNameString
/* 804761DC  39 20 00 10 */	li r9, 0x10
/* 804761E0  7C 64 1B 78 */	mr r4, r3
/* 804761E4  91 21 00 08 */	stw r9, 8(r1)
/* 804761E8  38 00 00 00 */	li r0, 0
/* 804761EC  3C A0 81 1D */	lis r5, else_string_2061@ha /* 0x811CE698@ha */
/* 804761F0  3C 60 81 1D */	lis r3, cancel_string_2060@ha /* 0x811CE688@ha */
/* 804761F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804761F8  39 05 E6 98 */	addi r8, r5, else_string_2061@l /* 0x811CE698@l */
/* 804761FC  39 43 E6 88 */	addi r10, r3, cancel_string_2060@l /* 0x811CE688@l */
/* 80476200  7F C3 F3 78 */	mr r3, r30
/* 80476204  91 21 00 10 */	stw r9, 0x10(r1)
/* 80476208  7F E6 FB 78 */	mr r6, r31
/* 8047620C  38 A0 00 10 */	li r5, 0x10
/* 80476210  38 E0 00 10 */	li r7, 0x10
/* 80476214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476218  91 21 00 18 */	stw r9, 0x18(r1)
/* 8047621C  39 20 00 10 */	li r9, 0x10
/* 80476220  4B F0 D5 45 */	bl mChoice_Set_choice_data
/* 80476224  39 61 00 30 */	addi r11, r1, 0x30
/* 80476228  4B C2 4C F9 */	bl func_8009AF20
/* 8047622C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80476230  7C 08 03 A6 */	mtlr r0
/* 80476234  38 21 00 30 */	addi r1, r1, 0x30
/* 80476238  4E 80 00 20 */	blr 

lbl_803840DC:
/* 803840DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803840E0  7C 08 02 A6 */	mflr r0
/* 803840E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803840E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803840EC  4B D1 6D E9 */	bl func_8009AED4
/* 803840F0  7C 7D 1B 78 */	mr r29, r3
/* 803840F4  7C 9E 23 78 */	mr r30, r4
/* 803840F8  7C BF 2B 78 */	mr r31, r5
/* 803840FC  48 03 B5 AD */	bl func_803BF6A8
/* 80384100  7F A4 EB 78 */	mr r4, r29
/* 80384104  7F C5 F3 78 */	mr r5, r30
/* 80384108  7F E6 FB 78 */	mr r6, r31
/* 8038410C  48 03 D6 C9 */	bl mMsg_CopyDetermination
/* 80384110  39 61 00 20 */	addi r11, r1, 0x20
/* 80384114  4B D1 6E 0D */	bl func_8009AF20
/* 80384118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038411C  7C 08 03 A6 */	mtlr r0
/* 80384120  38 21 00 20 */	addi r1, r1, 0x20
/* 80384124  4E 80 00 20 */	blr 

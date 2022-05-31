lbl_803BF920:
/* 803BF920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BF924  7C 08 02 A6 */	mflr r0
/* 803BF928  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BF92C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BF930  4B CD B5 9D */	bl func_8009AECC
/* 803BF934  7C 9C 23 78 */	mr r28, r4
/* 803BF938  7C BD 2B 78 */	mr r29, r5
/* 803BF93C  7C 7B 1B 78 */	mr r27, r3
/* 803BF940  7C DE 33 78 */	mr r30, r6
/* 803BF944  7C FF 3B 78 */	mr r31, r7
/* 803BF948  7D 05 43 78 */	mr r5, r8
/* 803BF94C  38 80 00 01 */	li r4, 1
/* 803BF950  4B FF FD 81 */	bl mMsg_Change_request_main_index
/* 803BF954  2C 03 00 00 */	cmpwi r3, 0
/* 803BF958  41 82 00 20 */	beq lbl_803BF978
/* 803BF95C  93 9B 04 60 */	stw r28, 0x460(r27)
/* 803BF960  38 60 00 01 */	li r3, 1
/* 803BF964  93 BB 04 68 */	stw r29, 0x468(r27)
/* 803BF968  80 1E 00 00 */	lwz r0, 0(r30)
/* 803BF96C  90 1B 04 6C */	stw r0, 0x46c(r27)
/* 803BF970  93 FB 04 64 */	stw r31, 0x464(r27)
/* 803BF974  48 00 00 08 */	b lbl_803BF97C
lbl_803BF978:
/* 803BF978  38 60 00 00 */	li r3, 0
lbl_803BF97C:
/* 803BF97C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BF980  4B CD B5 99 */	bl func_8009AF18
/* 803BF984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BF988  7C 08 03 A6 */	mtlr r0
/* 803BF98C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BF990  4E 80 00 20 */	blr 

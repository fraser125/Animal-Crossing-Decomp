lbl_8050F2EC:
/* 8050F2EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050F2F0  7C 08 02 A6 */	mflr r0
/* 8050F2F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050F2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F2FC  4B B8 BB D1 */	bl func_8009AECC
/* 8050F300  7C 7B 1B 78 */	mr r27, r3
/* 8050F304  3B A0 00 00 */	li r29, 0
/* 8050F308  3B 80 00 00 */	li r28, 0
/* 8050F30C  38 80 00 BD */	li r4, 0xbd
/* 8050F310  4B FF FF 1D */	bl mMck_strlen_new
/* 8050F314  7C 7F 1B 79 */	or. r31, r3, r3
/* 8050F318  41 81 00 44 */	bgt lbl_8050F35C
/* 8050F31C  38 60 00 00 */	li r3, 0
/* 8050F320  48 00 00 48 */	b lbl_8050F368
/* 8050F324  48 00 00 38 */	b lbl_8050F35C
lbl_8050F328:
/* 8050F328  7F 7E DB 78 */	mr r30, r27
/* 8050F32C  7F 63 DB 78 */	mr r3, r27
/* 8050F330  4B FF FD 61 */	bl mMck_cmp_key
/* 8050F334  2C 03 00 00 */	cmpwi r3, 0
/* 8050F338  41 82 00 08 */	beq lbl_8050F340
/* 8050F33C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8050F340:
/* 8050F340  7C 1D F8 50 */	subf r0, r29, r31
/* 8050F344  7F 63 DB 78 */	mr r3, r27
/* 8050F348  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8050F34C  4B FF FC D1 */	bl mMck_search_sep
/* 8050F350  3B 63 00 01 */	addi r27, r3, 1
/* 8050F354  7C 1E D8 50 */	subf r0, r30, r27
/* 8050F358  7F BD 02 14 */	add r29, r29, r0
lbl_8050F35C:
/* 8050F35C  7C 1D F8 00 */	cmpw r29, r31
/* 8050F360  40 81 FF C8 */	ble lbl_8050F328
/* 8050F364  7F 83 E3 78 */	mr r3, r28
lbl_8050F368:
/* 8050F368  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F36C  4B B8 BB AD */	bl func_8009AF18
/* 8050F370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050F374  7C 08 03 A6 */	mtlr r0
/* 8050F378  38 21 00 20 */	addi r1, r1, 0x20
/* 8050F37C  4E 80 00 20 */	blr 

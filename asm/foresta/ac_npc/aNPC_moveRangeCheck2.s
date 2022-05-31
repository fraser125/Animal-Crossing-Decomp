lbl_8052F15C:
/* 8052F15C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052F160  7C 08 02 A6 */	mflr r0
/* 8052F164  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052F168  39 61 00 40 */	addi r11, r1, 0x40
/* 8052F16C  4B B6 BD 61 */	bl func_8009AECC
/* 8052F170  7C 9C 23 79 */	or. r28, r4, r4
/* 8052F174  7C 7B 1B 78 */	mr r27, r3
/* 8052F178  7C BD 2B 78 */	mr r29, r5
/* 8052F17C  7C DE 33 78 */	mr r30, r6
/* 8052F180  3B E0 00 01 */	li r31, 1
/* 8052F184  41 82 00 10 */	beq lbl_8052F194
/* 8052F188  7F 83 E3 78 */	mr r3, r28
/* 8052F18C  38 80 00 0C */	li r4, 0xc
/* 8052F190  4B B2 DE D9 */	bl bzero
lbl_8052F194:
/* 8052F194  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8052F198  2C 00 00 01 */	cmpwi r0, 1
/* 8052F19C  41 82 00 40 */	beq lbl_8052F1DC
/* 8052F1A0  40 80 00 68 */	bge lbl_8052F208
/* 8052F1A4  2C 00 00 00 */	cmpwi r0, 0
/* 8052F1A8  40 80 00 08 */	bge lbl_8052F1B0
/* 8052F1AC  48 00 00 5C */	b lbl_8052F208
lbl_8052F1B0:
/* 8052F1B0  80 DD 00 00 */	lwz r6, 0(r29)
/* 8052F1B4  7F 63 DB 78 */	mr r3, r27
/* 8052F1B8  80 BD 00 04 */	lwz r5, 4(r29)
/* 8052F1BC  38 81 00 14 */	addi r4, r1, 0x14
/* 8052F1C0  80 1D 00 08 */	lwz r0, 8(r29)
/* 8052F1C4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8052F1C8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8052F1CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8052F1D0  4B FF FC 81 */	bl aNPC_blockRangeCheck
/* 8052F1D4  7C 7F 1B 78 */	mr r31, r3
/* 8052F1D8  48 00 00 30 */	b lbl_8052F208
lbl_8052F1DC:
/* 8052F1DC  80 FD 00 00 */	lwz r7, 0(r29)
/* 8052F1E0  7F 63 DB 78 */	mr r3, r27
/* 8052F1E4  80 DD 00 04 */	lwz r6, 4(r29)
/* 8052F1E8  7F 84 E3 78 */	mr r4, r28
/* 8052F1EC  80 1D 00 08 */	lwz r0, 8(r29)
/* 8052F1F0  38 A1 00 08 */	addi r5, r1, 8
/* 8052F1F4  90 E1 00 08 */	stw r7, 8(r1)
/* 8052F1F8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8052F1FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052F200  4B FF FD 85 */	bl aNPC_circleRangeCheck
/* 8052F204  7C 7F 1B 78 */	mr r31, r3
lbl_8052F208:
/* 8052F208  7F E3 FB 78 */	mr r3, r31
/* 8052F20C  39 61 00 40 */	addi r11, r1, 0x40
/* 8052F210  4B B6 BD 09 */	bl func_8009AF18
/* 8052F214  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F218  7C 08 03 A6 */	mtlr r0
/* 8052F21C  38 21 00 40 */	addi r1, r1, 0x40
/* 8052F220  4E 80 00 20 */	blr 

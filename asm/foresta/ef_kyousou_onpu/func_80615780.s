lbl_80615780:
/* 80615780  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80615784  7C 08 02 A6 */	mflr r0
/* 80615788  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061578C  39 61 00 50 */	addi r11, r1, 0x50
/* 80615790  4B A8 57 35 */	bl func_8009AEC4
/* 80615794  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80615798  7C 79 1B 78 */	mr r25, r3
/* 8061579C  38 6A 85 38 */	addi r3, r10, common_data@l /* 0x81138538@l */
/* 806157A0  7C 9A 23 78 */	mr r26, r4
/* 806157A4  3F E3 00 02 */	addis r31, r3, 2
/* 806157A8  7C A0 2B 78 */	mr r0, r5
/* 806157AC  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 806157B0  7C DB 33 78 */	mr r27, r6
/* 806157B4  7C FC 3B 78 */	mr r28, r7
/* 806157B8  7D 1D 43 78 */	mr r29, r8
/* 806157BC  28 0B 00 00 */	cmplwi r11, 0
/* 806157C0  7D 3E 4B 78 */	mr r30, r9
/* 806157C4  41 82 00 48 */	beq lbl_8061580C
/* 806157C8  80 79 00 00 */	lwz r3, 0(r25)
/* 806157CC  7F 45 D3 78 */	mr r5, r26
/* 806157D0  81 39 00 04 */	lwz r9, 4(r25)
/* 806157D4  7C 06 03 78 */	mr r6, r0
/* 806157D8  80 19 00 08 */	lwz r0, 8(r25)
/* 806157DC  7F 67 DB 78 */	mr r7, r27
/* 806157E0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 806157E4  7F 88 E3 78 */	mr r8, r28
/* 806157E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 806157EC  38 60 00 20 */	li r3, 0x20
/* 806157F0  91 21 00 20 */	stw r9, 0x20(r1)
/* 806157F4  39 20 00 02 */	li r9, 2
/* 806157F8  39 40 00 00 */	li r10, 0
/* 806157FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80615800  81 8B 00 00 */	lwz r12, 0(r11)
/* 80615804  7D 89 03 A6 */	mtctr r12
/* 80615808  4E 80 04 21 */	bctrl 
lbl_8061580C:
/* 8061580C  80 79 00 00 */	lwz r3, 0(r25)
/* 80615810  7F 66 DB 78 */	mr r6, r27
/* 80615814  80 B9 00 04 */	lwz r5, 4(r25)
/* 80615818  7F 88 E3 78 */	mr r8, r28
/* 8061581C  80 19 00 08 */	lwz r0, 8(r25)
/* 80615820  7F 49 D3 78 */	mr r9, r26
/* 80615824  90 61 00 10 */	stw r3, 0x10(r1)
/* 80615828  7F AA EB 78 */	mr r10, r29
/* 8061582C  38 81 00 10 */	addi r4, r1, 0x10
/* 80615830  38 60 00 64 */	li r3, 0x64
/* 80615834  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80615838  38 A0 00 00 */	li r5, 0
/* 8061583C  38 E0 00 00 */	li r7, 0
/* 80615840  90 01 00 18 */	stw r0, 0x18(r1)
/* 80615844  93 C1 00 08 */	stw r30, 8(r1)
/* 80615848  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061584C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80615850  7D 89 03 A6 */	mtctr r12
/* 80615854  4E 80 04 21 */	bctrl 
/* 80615858  39 61 00 50 */	addi r11, r1, 0x50
/* 8061585C  4B A8 56 B5 */	bl func_8009AF10
/* 80615860  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80615864  7C 08 03 A6 */	mtlr r0
/* 80615868  38 21 00 50 */	addi r1, r1, 0x50
/* 8061586C  4E 80 00 20 */	blr 

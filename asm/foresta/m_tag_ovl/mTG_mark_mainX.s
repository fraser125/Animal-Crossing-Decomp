lbl_805F6ACC:
/* 805F6ACC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F6AD0  7C 08 02 A6 */	mflr r0
/* 805F6AD4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F6AD8  39 61 00 50 */	addi r11, r1, 0x50
/* 805F6ADC  4B AA 43 E9 */	bl func_8009AEC4
/* 805F6AE0  39 20 00 00 */	li r9, 0
/* 805F6AE4  38 00 00 08 */	li r0, 8
/* 805F6AE8  7C 7A 1B 78 */	mr r26, r3
/* 805F6AEC  7C 9B 23 78 */	mr r27, r4
/* 805F6AF0  7C BC 2B 78 */	mr r28, r5
/* 805F6AF4  7C DD 33 78 */	mr r29, r6
/* 805F6AF8  7C FE 3B 78 */	mr r30, r7
/* 805F6AFC  7D 1F 43 78 */	mr r31, r8
/* 805F6B00  91 21 00 10 */	stw r9, 0x10(r1)
/* 805F6B04  38 61 00 1C */	addi r3, r1, 0x1c
/* 805F6B08  7C 09 03 A6 */	mtctr r0
lbl_805F6B0C:
/* 805F6B0C  99 23 00 00 */	stb r9, 0(r3)
/* 805F6B10  38 63 00 01 */	addi r3, r3, 1
/* 805F6B14  42 00 FF F8 */	bdnz lbl_805F6B0C
/* 805F6B18  7F 43 D3 78 */	mr r3, r26
/* 805F6B1C  38 80 00 00 */	li r4, 0
/* 805F6B20  4B FF 94 A1 */	bl mTG_get_mail_pointer
/* 805F6B24  38 01 00 14 */	addi r0, r1, 0x14
/* 805F6B28  7C 68 1B 78 */	mr r8, r3
/* 805F6B2C  90 01 00 08 */	stw r0, 8(r1)
/* 805F6B30  38 01 00 1C */	addi r0, r1, 0x1c
/* 805F6B34  7F 43 D3 78 */	mr r3, r26
/* 805F6B38  7F 86 E3 78 */	mr r6, r28
/* 805F6B3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F6B40  7F A7 EB 78 */	mr r7, r29
/* 805F6B44  7F C9 F3 78 */	mr r9, r30
/* 805F6B48  39 41 00 18 */	addi r10, r1, 0x18
/* 805F6B4C  80 9B 00 00 */	lwz r4, 0(r27)
/* 805F6B50  80 BB 00 38 */	lwz r5, 0x38(r27)
/* 805F6B54  4B FF F8 71 */	bl mTG_mark_main_sub
/* 805F6B58  7C 79 1B 79 */	or. r25, r3, r3
/* 805F6B5C  41 82 00 D4 */	beq lbl_805F6C30
/* 805F6B60  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805F6B64  2C 1E 00 03 */	cmpwi r30, 3
/* 805F6B68  38 03 00 0F */	addi r0, r3, 0xf
/* 805F6B6C  7C 00 26 70 */	srawi r0, r0, 4
/* 805F6B70  7C 00 01 94 */	addze r0, r0
/* 805F6B74  54 05 08 3C */	slwi r5, r0, 1
/* 805F6B78  41 82 00 64 */	beq lbl_805F6BDC
/* 805F6B7C  40 80 00 1C */	bge lbl_805F6B98
/* 805F6B80  2C 1E 00 01 */	cmpwi r30, 1
/* 805F6B84  41 82 00 38 */	beq lbl_805F6BBC
/* 805F6B88  40 80 00 44 */	bge lbl_805F6BCC
/* 805F6B8C  2C 1E 00 00 */	cmpwi r30, 0
/* 805F6B90  40 80 00 18 */	bge lbl_805F6BA8
/* 805F6B94  48 00 00 78 */	b lbl_805F6C0C
lbl_805F6B98:
/* 805F6B98  2C 1E 00 05 */	cmpwi r30, 5
/* 805F6B9C  41 82 00 60 */	beq lbl_805F6BFC
/* 805F6BA0  40 80 00 6C */	bge lbl_805F6C0C
/* 805F6BA4  48 00 00 48 */	b lbl_805F6BEC
lbl_805F6BA8:
/* 805F6BA8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805F6BAC  38 81 00 1C */	addi r4, r1, 0x1c
/* 805F6BB0  4B FF FE 15 */	bl mTG_bit_chk
/* 805F6BB4  90 61 00 10 */	stw r3, 0x10(r1)
/* 805F6BB8  48 00 00 54 */	b lbl_805F6C0C
lbl_805F6BBC:
/* 805F6BBC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805F6BC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 805F6BC4  4B FF FE 35 */	bl mTG_bit_on
/* 805F6BC8  48 00 00 44 */	b lbl_805F6C0C
lbl_805F6BCC:
/* 805F6BCC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805F6BD0  38 81 00 1C */	addi r4, r1, 0x1c
/* 805F6BD4  4B FF FE 51 */	bl mTG_bit_off
/* 805F6BD8  48 00 00 34 */	b lbl_805F6C0C
lbl_805F6BDC:
/* 805F6BDC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805F6BE0  38 81 00 1C */	addi r4, r1, 0x1c
/* 805F6BE4  4B FF FE 6D */	bl mTG_bit_rvs
/* 805F6BE8  48 00 00 24 */	b lbl_805F6C0C
lbl_805F6BEC:
/* 805F6BEC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805F6BF0  38 81 00 1C */	addi r4, r1, 0x1c
/* 805F6BF4  4B FF FE 89 */	bl mTG_bit_clr
/* 805F6BF8  48 00 00 14 */	b lbl_805F6C0C
lbl_805F6BFC:
/* 805F6BFC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805F6C00  38 81 00 1C */	addi r4, r1, 0x1c
/* 805F6C04  4B FF FE 99 */	bl mTG_bit_chk_all0
/* 805F6C08  90 61 00 10 */	stw r3, 0x10(r1)
lbl_805F6C0C:
/* 805F6C0C  2C 1E 00 00 */	cmpwi r30, 0
/* 805F6C10  41 82 00 20 */	beq lbl_805F6C30
/* 805F6C14  7F 43 D3 78 */	mr r3, r26
/* 805F6C18  7F 64 DB 78 */	mr r4, r27
/* 805F6C1C  7F 85 E3 78 */	mr r5, r28
/* 805F6C20  7F A6 EB 78 */	mr r6, r29
/* 805F6C24  39 01 00 10 */	addi r8, r1, 0x10
/* 805F6C28  38 E0 00 00 */	li r7, 0
/* 805F6C2C  4B FF FE A1 */	bl mTG_mark_mainX
lbl_805F6C30:
/* 805F6C30  28 1F 00 00 */	cmplwi r31, 0
/* 805F6C34  41 82 00 0C */	beq lbl_805F6C40
/* 805F6C38  80 01 00 10 */	lwz r0, 0x10(r1)
/* 805F6C3C  90 1F 00 00 */	stw r0, 0(r31)
lbl_805F6C40:
/* 805F6C40  7F 23 CB 78 */	mr r3, r25
/* 805F6C44  39 61 00 50 */	addi r11, r1, 0x50
/* 805F6C48  4B AA 42 C9 */	bl func_8009AF10
/* 805F6C4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F6C50  7C 08 03 A6 */	mtlr r0
/* 805F6C54  38 21 00 50 */	addi r1, r1, 0x50
/* 805F6C58  4E 80 00 20 */	blr 

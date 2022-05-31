lbl_805FAF10:
/* 805FAF10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FAF14  7C 08 02 A6 */	mflr r0
/* 805FAF18  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FAF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 805FAF20  4B A9 FF A9 */	bl func_8009AEC8
/* 805FAF24  7C 9C 23 78 */	mr r28, r4
/* 805FAF28  7C 7B 1B 78 */	mr r27, r3
/* 805FAF2C  7C BD 2B 78 */	mr r29, r5
/* 805FAF30  38 80 00 00 */	li r4, 0
/* 805FAF34  4B FF 50 8D */	bl mTG_get_mail_pointer
/* 805FAF38  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FAF3C  7C 7F 1B 78 */	mr r31, r3
/* 805FAF40  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 805FAF44  3B C0 00 00 */	li r30, 0
/* 805FAF48  2C 00 00 01 */	cmpwi r0, 1
/* 805FAF4C  83 44 09 88 */	lwz r26, 0x988(r4)
/* 805FAF50  40 82 00 60 */	bne lbl_805FAFB0
/* 805FAF54  A0 1A 05 E2 */	lhz r0, 0x5e2(r26)
/* 805FAF58  28 00 00 00 */	cmplwi r0, 0
/* 805FAF5C  41 82 00 54 */	beq lbl_805FAFB0
/* 805FAF60  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805FAF64  38 63 00 08 */	addi r3, r3, 8
/* 805FAF68  4B FF 4B F9 */	bl mTG_get_table_idx
/* 805FAF6C  38 00 00 01 */	li r0, 1
/* 805FAF70  A0 9A 05 E2 */	lhz r4, 0x5e2(r26)
/* 805FAF74  7C 00 18 30 */	slw r0, r0, r3
/* 805FAF78  7C 80 00 39 */	and. r0, r4, r0
/* 805FAF7C  41 82 00 34 */	beq lbl_805FAFB0
/* 805FAF80  80 1C 00 00 */	lwz r0, 0(r28)
/* 805FAF84  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FAF88  41 82 00 1C */	beq lbl_805FAFA4
/* 805FAF8C  40 80 00 20 */	bge lbl_805FAFAC
/* 805FAF90  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FAF94  41 82 00 08 */	beq lbl_805FAF9C
/* 805FAF98  48 00 00 14 */	b lbl_805FAFAC
lbl_805FAF9C:
/* 805FAF9C  3B C0 00 2C */	li r30, 0x2c
/* 805FAFA0  48 00 00 10 */	b lbl_805FAFB0
lbl_805FAFA4:
/* 805FAFA4  3B C0 00 2F */	li r30, 0x2f
/* 805FAFA8  48 00 00 08 */	b lbl_805FAFB0
lbl_805FAFAC:
/* 805FAFAC  3B C0 00 2C */	li r30, 0x2c
lbl_805FAFB0:
/* 805FAFB0  80 1C 00 00 */	lwz r0, 0(r28)
/* 805FAFB4  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FAFB8  40 82 00 44 */	bne lbl_805FAFFC
/* 805FAFBC  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FAFC0  2C 00 00 05 */	cmpwi r0, 5
/* 805FAFC4  40 82 00 38 */	bne lbl_805FAFFC
/* 805FAFC8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805FAFCC  83 43 09 98 */	lwz r26, 0x998(r3)
/* 805FAFD0  28 1A 00 00 */	cmplwi r26, 0
/* 805FAFD4  41 82 00 28 */	beq lbl_805FAFFC
/* 805FAFD8  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805FAFDC  38 63 00 08 */	addi r3, r3, 8
/* 805FAFE0  4B FF 4B 81 */	bl mTG_get_table_idx
/* 805FAFE4  38 00 00 01 */	li r0, 1
/* 805FAFE8  A0 9A 00 08 */	lhz r4, 8(r26)
/* 805FAFEC  7C 00 18 30 */	slw r0, r0, r3
/* 805FAFF0  7C 80 00 39 */	and. r0, r4, r0
/* 805FAFF4  41 82 00 08 */	beq lbl_805FAFFC
/* 805FAFF8  3B C0 00 2E */	li r30, 0x2e
lbl_805FAFFC:
/* 805FAFFC  80 1C 00 00 */	lwz r0, 0(r28)
/* 805FB000  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FB004  40 82 00 44 */	bne lbl_805FB048
/* 805FB008  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FB00C  2C 00 00 09 */	cmpwi r0, 9
/* 805FB010  40 82 00 38 */	bne lbl_805FB048
/* 805FB014  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805FB018  83 43 09 C0 */	lwz r26, 0x9c0(r3)
/* 805FB01C  28 1A 00 00 */	cmplwi r26, 0
/* 805FB020  41 82 00 28 */	beq lbl_805FB048
/* 805FB024  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805FB028  38 63 00 08 */	addi r3, r3, 8
/* 805FB02C  4B FF 4B 35 */	bl mTG_get_table_idx
/* 805FB030  38 00 00 01 */	li r0, 1
/* 805FB034  80 9A 0B B4 */	lwz r4, 0xbb4(r26)
/* 805FB038  7C 00 18 30 */	slw r0, r0, r3
/* 805FB03C  7C 80 00 39 */	and. r0, r4, r0
/* 805FB040  41 82 00 08 */	beq lbl_805FB048
/* 805FB044  3B C0 00 2F */	li r30, 0x2f
lbl_805FB048:
/* 805FB048  2C 1E 00 00 */	cmpwi r30, 0
/* 805FB04C  41 82 00 0C */	beq lbl_805FB058
/* 805FB050  7F C3 F3 78 */	mr r3, r30
/* 805FB054  48 00 01 28 */	b lbl_805FB17C
lbl_805FB058:
/* 805FB058  7F E3 FB 78 */	mr r3, r31
/* 805FB05C  4B DC 17 45 */	bl mMl_check_not_used_mail
/* 805FB060  2C 03 00 01 */	cmpwi r3, 1
/* 805FB064  41 82 01 14 */	beq lbl_805FB178
/* 805FB068  80 1C 00 00 */	lwz r0, 0(r28)
/* 805FB06C  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FB070  40 82 00 28 */	bne lbl_805FB098
/* 805FB074  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 805FB078  28 00 00 03 */	cmplwi r0, 3
/* 805FB07C  41 82 00 0C */	beq lbl_805FB088
/* 805FB080  28 00 00 00 */	cmplwi r0, 0
/* 805FB084  40 82 00 0C */	bne lbl_805FB090
lbl_805FB088:
/* 805FB088  38 60 00 14 */	li r3, 0x14
/* 805FB08C  48 00 00 F0 */	b lbl_805FB17C
lbl_805FB090:
/* 805FB090  38 60 00 13 */	li r3, 0x13
/* 805FB094  48 00 00 E8 */	b lbl_805FB17C
lbl_805FB098:
/* 805FB098  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FB09C  40 82 00 34 */	bne lbl_805FB0D0
/* 805FB0A0  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 805FB0A4  28 00 00 03 */	cmplwi r0, 3
/* 805FB0A8  41 82 00 18 */	beq lbl_805FB0C0
/* 805FB0AC  28 00 00 00 */	cmplwi r0, 0
/* 805FB0B0  41 82 00 10 */	beq lbl_805FB0C0
/* 805FB0B4  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 805FB0B8  28 00 00 00 */	cmplwi r0, 0
/* 805FB0BC  41 82 00 0C */	beq lbl_805FB0C8
lbl_805FB0C0:
/* 805FB0C0  38 60 00 14 */	li r3, 0x14
/* 805FB0C4  48 00 00 B8 */	b lbl_805FB17C
lbl_805FB0C8:
/* 805FB0C8  38 60 00 13 */	li r3, 0x13
/* 805FB0CC  48 00 00 B0 */	b lbl_805FB17C
lbl_805FB0D0:
/* 805FB0D0  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 805FB0D4  2C 00 00 07 */	cmpwi r0, 7
/* 805FB0D8  40 82 00 1C */	bne lbl_805FB0F4
/* 805FB0DC  7F E3 FB 78 */	mr r3, r31
/* 805FB0E0  4B DC 1A 91 */	bl mMl_check_send_mail
/* 805FB0E4  2C 03 00 00 */	cmpwi r3, 0
/* 805FB0E8  41 82 00 90 */	beq lbl_805FB178
/* 805FB0EC  38 60 00 1E */	li r3, 0x1e
/* 805FB0F0  48 00 00 8C */	b lbl_805FB17C
lbl_805FB0F4:
/* 805FB0F4  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 805FB0F8  3B 40 00 00 */	li r26, 0
/* 805FB0FC  28 00 00 00 */	cmplwi r0, 0
/* 805FB100  41 82 00 08 */	beq lbl_805FB108
/* 805FB104  63 5A 00 01 */	ori r26, r26, 1
lbl_805FB108:
/* 805FB108  7F E3 FB 78 */	mr r3, r31
/* 805FB10C  4B DC 1A 65 */	bl mMl_check_send_mail
/* 805FB110  2C 03 00 00 */	cmpwi r3, 0
/* 805FB114  40 82 00 08 */	bne lbl_805FB11C
/* 805FB118  63 5A 00 02 */	ori r26, r26, 2
lbl_805FB11C:
/* 805FB11C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FB120  3C 80 80 6D */	lis r4, mail_next_type@ha /* 0x806D0E1C@ha */
/* 805FB124  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FB128  57 45 10 3A */	slwi r5, r26, 2
/* 805FB12C  3C 63 00 02 */	addis r3, r3, 2
/* 805FB130  38 84 0E 1C */	addi r4, r4, mail_next_type@l /* 0x806D0E1C@l */
/* 805FB134  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 805FB138  7C 64 28 2E */	lwzx r3, r4, r5
/* 805FB13C  28 00 00 00 */	cmplwi r0, 0
/* 805FB140  40 82 00 18 */	bne lbl_805FB158
/* 805FB144  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 805FB148  28 00 00 03 */	cmplwi r0, 3
/* 805FB14C  41 82 00 0C */	beq lbl_805FB158
/* 805FB150  28 00 00 00 */	cmplwi r0, 0
/* 805FB154  40 82 00 28 */	bne lbl_805FB17C
lbl_805FB158:
/* 805FB158  2C 03 00 16 */	cmpwi r3, 0x16
/* 805FB15C  40 82 00 0C */	bne lbl_805FB168
/* 805FB160  38 60 00 17 */	li r3, 0x17
/* 805FB164  48 00 00 18 */	b lbl_805FB17C
lbl_805FB168:
/* 805FB168  2C 03 00 13 */	cmpwi r3, 0x13
/* 805FB16C  40 82 00 10 */	bne lbl_805FB17C
/* 805FB170  38 60 00 14 */	li r3, 0x14
/* 805FB174  48 00 00 08 */	b lbl_805FB17C
lbl_805FB178:
/* 805FB178  38 60 00 00 */	li r3, 0
lbl_805FB17C:
/* 805FB17C  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB180  4B A9 FD 95 */	bl func_8009AF14
/* 805FB184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FB188  7C 08 03 A6 */	mtlr r0
/* 805FB18C  38 21 00 20 */	addi r1, r1, 0x20
/* 805FB190  4E 80 00 20 */	blr 

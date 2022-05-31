lbl_803FAEF0:
/* 803FAEF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FAEF4  7C 08 02 A6 */	mflr r0
/* 803FAEF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FAEFC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FAF00  4B C9 FF CD */	bl func_8009AECC
/* 803FAF04  7C 7C 1B 78 */	mr r28, r3
/* 803FAF08  7C 9B 23 78 */	mr r27, r4
/* 803FAF0C  88 83 00 10 */	lbz r4, 0x10(r3)
/* 803FAF10  3B C0 00 00 */	li r30, 0
/* 803FAF14  3B A0 00 00 */	li r29, 0
/* 803FAF18  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 803FAF1C  2C 00 00 01 */	cmpwi r0, 1
/* 803FAF20  40 82 00 08 */	bne lbl_803FAF28
/* 803FAF24  3B C0 00 01 */	li r30, 1
lbl_803FAF28:
/* 803FAF28  1C 7E 00 94 */	mulli r3, r30, 0x94
/* 803FAF2C  3B E3 00 54 */	addi r31, r3, 0x54
/* 803FAF30  7F FC FA 14 */	add r31, r28, r31
/* 803FAF34  80 DF 00 7C */	lwz r6, 0x7c(r31)
/* 803FAF38  28 06 00 00 */	cmplwi r6, 0
/* 803FAF3C  41 82 00 F0 */	beq lbl_803FB02C
/* 803FAF40  7F C4 F3 78 */	mr r4, r30
/* 803FAF44  38 7F 00 70 */	addi r3, r31, 0x70
/* 803FAF48  38 BF 00 74 */	addi r5, r31, 0x74
/* 803FAF4C  4B FF CD F1 */	bl mCD_get_space_bg
/* 803FAF50  2C 03 00 01 */	cmpwi r3, 1
/* 803FAF54  40 82 00 9C */	bne lbl_803FAFF0
/* 803FAF58  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 803FAF5C  7C 00 D8 00 */	cmpw r0, r27
/* 803FAF60  41 80 00 70 */	blt lbl_803FAFD0
/* 803FAF64  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 803FAF68  7F C3 F3 78 */	mr r3, r30
/* 803FAF6C  4B FF FB DD */	bl mCD_check_Land_exist
/* 803FAF70  2C 03 00 01 */	cmpwi r3, 1
/* 803FAF74  40 82 00 10 */	bne lbl_803FAF84
/* 803FAF78  38 00 00 09 */	li r0, 9
/* 803FAF7C  90 1F 00 78 */	stw r0, 0x78(r31)
/* 803FAF80  48 00 00 58 */	b lbl_803FAFD8
lbl_803FAF84:
/* 803FAF84  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 803FAF88  7F C3 F3 78 */	mr r3, r30
/* 803FAF8C  4B FF FE 65 */	bl mCD_CheckPassportFile_slot
/* 803FAF90  2C 03 00 01 */	cmpwi r3, 1
/* 803FAF94  40 82 00 10 */	bne lbl_803FAFA4
/* 803FAF98  38 00 00 0A */	li r0, 0xa
/* 803FAF9C  90 1F 00 78 */	stw r0, 0x78(r31)
/* 803FAFA0  48 00 00 38 */	b lbl_803FAFD8
lbl_803FAFA4:
/* 803FAFA4  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 803FAFA8  7F C4 F3 78 */	mr r4, r30
/* 803FAFAC  4B FF CA 99 */	bl mCD_get_file_num
/* 803FAFB0  2C 03 00 7F */	cmpwi r3, 0x7f
/* 803FAFB4  41 80 00 10 */	blt lbl_803FAFC4
/* 803FAFB8  38 00 00 0B */	li r0, 0xb
/* 803FAFBC  90 1F 00 78 */	stw r0, 0x78(r31)
/* 803FAFC0  48 00 00 18 */	b lbl_803FAFD8
lbl_803FAFC4:
/* 803FAFC4  93 DC 00 00 */	stw r30, 0(r28)
/* 803FAFC8  3B A0 00 01 */	li r29, 1
/* 803FAFCC  48 00 00 0C */	b lbl_803FAFD8
lbl_803FAFD0:
/* 803FAFD0  38 00 FF F7 */	li r0, -9
/* 803FAFD4  90 1F 00 74 */	stw r0, 0x74(r31)
lbl_803FAFD8:
/* 803FAFD8  38 00 00 01 */	li r0, 1
/* 803FAFDC  88 7C 00 10 */	lbz r3, 0x10(r28)
/* 803FAFE0  7C 00 F0 30 */	slw r0, r0, r30
/* 803FAFE4  7C 60 03 78 */	or r0, r3, r0
/* 803FAFE8  98 1C 00 10 */	stb r0, 0x10(r28)
/* 803FAFEC  48 00 00 54 */	b lbl_803FB040
lbl_803FAFF0:
/* 803FAFF0  2C 03 00 00 */	cmpwi r3, 0
/* 803FAFF4  41 82 00 4C */	beq lbl_803FB040
/* 803FAFF8  7F C4 F3 78 */	mr r4, r30
/* 803FAFFC  38 60 20 00 */	li r3, 0x2000
/* 803FB000  4B FF C9 2D */	bl mCD_check_sector_size
/* 803FB004  2C 03 00 00 */	cmpwi r3, 0
/* 803FB008  40 82 00 0C */	bne lbl_803FB014
/* 803FB00C  38 00 00 06 */	li r0, 6
/* 803FB010  90 1F 00 78 */	stw r0, 0x78(r31)
lbl_803FB014:
/* 803FB014  38 00 00 01 */	li r0, 1
/* 803FB018  88 7C 00 10 */	lbz r3, 0x10(r28)
/* 803FB01C  7C 00 F0 30 */	slw r0, r0, r30
/* 803FB020  7C 60 03 78 */	or r0, r3, r0
/* 803FB024  98 1C 00 10 */	stb r0, 0x10(r28)
/* 803FB028  48 00 00 18 */	b lbl_803FB040
lbl_803FB02C:
/* 803FB02C  38 00 00 01 */	li r0, 1
/* 803FB030  3B A0 FF FF */	li r29, -1
/* 803FB034  7C 00 F0 30 */	slw r0, r0, r30
/* 803FB038  7C 80 03 78 */	or r0, r4, r0
/* 803FB03C  98 1C 00 10 */	stb r0, 0x10(r28)
lbl_803FB040:
/* 803FB040  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 803FB044  2C 00 00 09 */	cmpwi r0, 9
/* 803FB048  41 82 00 28 */	beq lbl_803FB070
/* 803FB04C  2C 00 00 0A */	cmpwi r0, 0xa
/* 803FB050  41 82 00 20 */	beq lbl_803FB070
/* 803FB054  2C 00 00 06 */	cmpwi r0, 6
/* 803FB058  41 82 00 18 */	beq lbl_803FB070
/* 803FB05C  2C 00 00 0B */	cmpwi r0, 0xb
/* 803FB060  41 82 00 10 */	beq lbl_803FB070
/* 803FB064  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FB068  4B FF F2 F1 */	bl mCD_TransErrorCode_nes
/* 803FB06C  90 7F 00 78 */	stw r3, 0x78(r31)
lbl_803FB070:
/* 803FB070  88 1C 00 10 */	lbz r0, 0x10(r28)
/* 803FB074  28 00 00 03 */	cmplwi r0, 3
/* 803FB078  40 82 00 48 */	bne lbl_803FB0C0
/* 803FB07C  2C 1D 00 00 */	cmpwi r29, 0
/* 803FB080  40 82 00 40 */	bne lbl_803FB0C0
/* 803FB084  80 9C 00 CC */	lwz r4, 0xcc(r28)
/* 803FB088  7F 83 E3 78 */	mr r3, r28
/* 803FB08C  80 BC 01 60 */	lwz r5, 0x160(r28)
/* 803FB090  4B FF FA 3D */	bl mCD_GetHighPriority_common
/* 803FB094  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FB098  2C 00 FF FF */	cmpwi r0, -1
/* 803FB09C  41 82 00 18 */	beq lbl_803FB0B4
/* 803FB0A0  1C 00 00 94 */	mulli r0, r0, 0x94
/* 803FB0A4  7C 7C 02 14 */	add r3, r28, r0
/* 803FB0A8  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 803FB0AC  2C 00 00 00 */	cmpwi r0, 0
/* 803FB0B0  41 82 00 0C */	beq lbl_803FB0BC
lbl_803FB0B4:
/* 803FB0B4  3B A0 FF FF */	li r29, -1
/* 803FB0B8  48 00 00 08 */	b lbl_803FB0C0
lbl_803FB0BC:
/* 803FB0BC  3B A0 00 01 */	li r29, 1
lbl_803FB0C0:
/* 803FB0C0  7F A3 EB 78 */	mr r3, r29
/* 803FB0C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB0C8  4B C9 FE 51 */	bl func_8009AF18
/* 803FB0CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB0D0  7C 08 03 A6 */	mtlr r0
/* 803FB0D4  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB0D8  4E 80 00 20 */	blr 

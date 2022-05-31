lbl_8049FF78:
/* 8049FF78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049FF7C  7C 08 02 A6 */	mflr r0
/* 8049FF80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049FF84  39 61 00 20 */	addi r11, r1, 0x20
/* 8049FF88  4B BF AF 49 */	bl func_8009AED0
/* 8049FF8C  7C 7D 1B 78 */	mr r29, r3
/* 8049FF90  7C 9E 23 78 */	mr r30, r4
/* 8049FF94  7C BF 2B 78 */	mr r31, r5
/* 8049FF98  7C DC 33 78 */	mr r28, r6
/* 8049FF9C  7C E3 3B 78 */	mr r3, r7
/* 8049FFA0  7D 04 43 78 */	mr r4, r8
/* 8049FFA4  4B F0 71 B1 */	bl mFI_BkNumtoUtFGTop
/* 8049FFA8  38 C0 00 00 */	li r6, 0
/* 8049FFAC  38 00 01 00 */	li r0, 0x100
/* 8049FFB0  90 DD 00 00 */	stw r6, 0(r29)
/* 8049FFB4  38 80 00 00 */	li r4, 0
/* 8049FFB8  38 E0 00 00 */	li r7, 0
/* 8049FFBC  90 DE 00 00 */	stw r6, 0(r30)
/* 8049FFC0  7C 09 03 A6 */	mtctr r0
lbl_8049FFC4:
/* 8049FFC4  7C 03 32 2E */	lhzx r0, r3, r6
/* 8049FFC8  28 00 24 00 */	cmplwi r0, 0x2400
/* 8049FFCC  41 80 00 0C */	blt lbl_8049FFD8
/* 8049FFD0  28 00 24 FF */	cmplwi r0, 0x24ff
/* 8049FFD4  41 80 00 0C */	blt lbl_8049FFE0
lbl_8049FFD8:
/* 8049FFD8  28 00 FE 0F */	cmplwi r0, 0xfe0f
/* 8049FFDC  40 82 00 40 */	bne lbl_804A001C
lbl_8049FFE0:
/* 8049FFE0  7C 04 E0 00 */	cmpw r4, r28
/* 8049FFE4  40 82 00 34 */	bne lbl_804A0018
/* 8049FFE8  54 E0 E0 06 */	slwi r0, r7, 0x1c
/* 8049FFEC  54 E5 0F FE */	srwi r5, r7, 0x1f
/* 8049FFF0  7C 85 00 50 */	subf r4, r5, r0
/* 8049FFF4  7C E0 26 70 */	srawi r0, r7, 4
/* 8049FFF8  54 84 20 3E */	rotlwi r4, r4, 4
/* 8049FFFC  7C 84 2A 14 */	add r4, r4, r5
/* 804A0000  7C 00 01 94 */	addze r0, r0
/* 804A0004  90 9D 00 00 */	stw r4, 0(r29)
/* 804A0008  90 1E 00 00 */	stw r0, 0(r30)
/* 804A000C  7C 03 32 2E */	lhzx r0, r3, r6
/* 804A0010  B0 1F 00 00 */	sth r0, 0(r31)
/* 804A0014  48 00 00 14 */	b lbl_804A0028
lbl_804A0018:
/* 804A0018  38 84 00 01 */	addi r4, r4, 1
lbl_804A001C:
/* 804A001C  38 E7 00 01 */	addi r7, r7, 1
/* 804A0020  38 C6 00 02 */	addi r6, r6, 2
/* 804A0024  42 00 FF A0 */	bdnz lbl_8049FFC4
lbl_804A0028:
/* 804A0028  39 61 00 20 */	addi r11, r1, 0x20
/* 804A002C  4B BF AE F1 */	bl func_8009AF1C
/* 804A0030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0034  7C 08 03 A6 */	mtlr r0
/* 804A0038  38 21 00 20 */	addi r1, r1, 0x20
/* 804A003C  4E 80 00 20 */	blr 

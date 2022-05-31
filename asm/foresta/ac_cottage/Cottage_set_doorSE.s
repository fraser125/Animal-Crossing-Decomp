lbl_80415F90:
/* 80415F90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80415F94  7C 08 02 A6 */	mflr r0
/* 80415F98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80415F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80415FA0  4B C8 4F 35 */	bl func_8009AED4
/* 80415FA4  7C 7D 1B 78 */	mr r29, r3
/* 80415FA8  80 03 02 B0 */	lwz r0, 0x2b0(r3)
/* 80415FAC  2C 00 00 02 */	cmpwi r0, 2
/* 80415FB0  41 82 00 2C */	beq lbl_80415FDC
/* 80415FB4  40 80 00 10 */	bge lbl_80415FC4
/* 80415FB8  2C 00 00 01 */	cmpwi r0, 1
/* 80415FBC  40 80 00 10 */	bge lbl_80415FCC
/* 80415FC0  48 00 00 1C */	b lbl_80415FDC
lbl_80415FC4:
/* 80415FC4  2C 00 00 04 */	cmpwi r0, 4
/* 80415FC8  40 80 00 14 */	bge lbl_80415FDC
lbl_80415FCC:
/* 80415FCC  3C 60 80 64 */	lis r3, chk_pat_in@ha /* 0x80643BB0@ha */
/* 80415FD0  38 03 3B B0 */	addi r0, r3, chk_pat_in@l /* 0x80643BB0@l */
/* 80415FD4  7C 1F 03 78 */	mr r31, r0
/* 80415FD8  48 00 00 10 */	b lbl_80415FE8
lbl_80415FDC:
/* 80415FDC  3C 60 80 64 */	lis r3, chk_pat_out@ha /* 0x80643BC0@ha */
/* 80415FE0  38 03 3B C0 */	addi r0, r3, chk_pat_out@l /* 0x80643BC0@l */
/* 80415FE4  7C 1F 03 78 */	mr r31, r0
lbl_80415FE8:
/* 80415FE8  3B C0 00 00 */	li r30, 0
lbl_80415FEC:
/* 80415FEC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80415FF0  38 7D 01 78 */	addi r3, r29, 0x178
/* 80415FF4  4B F5 A4 95 */	bl cKF_FrameControl_passCheck_now
/* 80415FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80415FFC  41 82 00 20 */	beq lbl_8041601C
/* 80416000  3C 60 80 64 */	lis r3, se_no@ha /* 0x80643BD0@ha */
/* 80416004  57 C0 08 3C */	slwi r0, r30, 1
/* 80416008  38 63 3B D0 */	addi r3, r3, se_no@l /* 0x80643BD0@l */
/* 8041600C  38 9D 00 28 */	addi r4, r29, 0x28
/* 80416010  7C 63 02 2E */	lhzx r3, r3, r0
/* 80416014  48 21 7F 95 */	bl sAdo_OngenTrgStart
/* 80416018  48 00 00 14 */	b lbl_8041602C
lbl_8041601C:
/* 8041601C  3B DE 00 01 */	addi r30, r30, 1
/* 80416020  3B FF 00 04 */	addi r31, r31, 4
/* 80416024  2C 1E 00 04 */	cmpwi r30, 4
/* 80416028  41 80 FF C4 */	blt lbl_80415FEC
lbl_8041602C:
/* 8041602C  39 61 00 20 */	addi r11, r1, 0x20
/* 80416030  4B C8 4E F1 */	bl func_8009AF20
/* 80416034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80416038  7C 08 03 A6 */	mtlr r0
/* 8041603C  38 21 00 20 */	addi r1, r1, 0x20
/* 80416040  4E 80 00 20 */	blr 

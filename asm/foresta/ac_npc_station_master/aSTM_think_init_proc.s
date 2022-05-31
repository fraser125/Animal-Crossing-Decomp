lbl_8057FF38:
/* 8057FF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FF3C  7C 08 02 A6 */	mflr r0
/* 8057FF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057FF48  7C 7F 1B 78 */	mr r31, r3
/* 8057FF4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057FF50  7C 9E 23 78 */	mr r30, r4
/* 8057FF54  4B E1 AD D9 */	bl mEv_CheckFirstIntro
/* 8057FF58  2C 03 00 01 */	cmpwi r3, 1
/* 8057FF5C  41 82 00 1C */	beq lbl_8057FF78
/* 8057FF60  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8057FF64  38 80 00 17 */	li r4, 0x17
/* 8057FF68  38 A0 00 07 */	li r5, 7
/* 8057FF6C  4B DF 5D 75 */	bl Actor_info_name_search
/* 8057FF70  28 03 00 00 */	cmplwi r3, 0
/* 8057FF74  41 82 00 24 */	beq lbl_8057FF98
lbl_8057FF78:
/* 8057FF78  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 8057FF7C  38 A0 00 00 */	li r5, 0
/* 8057FF80  38 03 C0 00 */	addi r0, r3, -16384
/* 8057FF84  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8057FF88  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 8057FF8C  38 03 C0 00 */	addi r0, r3, -16384
/* 8057FF90  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8057FF94  48 00 00 5C */	b lbl_8057FFF0
lbl_8057FF98:
/* 8057FF98  4B E1 AC 9D */	bl mEv_CheckFirstJob
/* 8057FF9C  2C 03 00 01 */	cmpwi r3, 1
/* 8057FFA0  40 82 00 0C */	bne lbl_8057FFAC
/* 8057FFA4  38 A0 00 05 */	li r5, 5
/* 8057FFA8  48 00 00 48 */	b lbl_8057FFF0
lbl_8057FFAC:
/* 8057FFAC  4B E1 AF 0D */	bl mEv_CheckTitleDemo
/* 8057FFB0  2C 03 00 00 */	cmpwi r3, 0
/* 8057FFB4  41 81 00 18 */	bgt lbl_8057FFCC
/* 8057FFB8  3C 60 80 65 */	lis r3, lit_716@ha /* 0x80649A48@ha */
/* 8057FFBC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8057FFC0  C0 03 9A 48 */	lfs f0, lit_716@l(r3)  /* 0x80649A48@l */
/* 8057FFC4  EC 01 00 2A */	fadds f0, f1, f0
/* 8057FFC8  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_8057FFCC:
/* 8057FFCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057FFD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057FFD4  3C 63 00 02 */	addis r3, r3, 2
/* 8057FFD8  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8057FFDC  28 00 00 04 */	cmplwi r0, 4
/* 8057FFE0  40 80 00 0C */	bge lbl_8057FFEC
/* 8057FFE4  38 A0 00 08 */	li r5, 8
/* 8057FFE8  48 00 00 08 */	b lbl_8057FFF0
lbl_8057FFEC:
/* 8057FFEC  38 A0 00 09 */	li r5, 9
lbl_8057FFF0:
/* 8057FFF0  38 60 00 FF */	li r3, 0xff
/* 8057FFF4  38 00 00 00 */	li r0, 0
/* 8057FFF8  98 7F 00 D6 */	stb r3, 0xd6(r31)
/* 8057FFFC  7F E3 FB 78 */	mr r3, r31
/* 80580000  7F C4 F3 78 */	mr r4, r30
/* 80580004  98 1F 08 31 */	stb r0, 0x831(r31)
/* 80580008  48 00 03 9D */	bl aSTM_setup_think_proc
/* 8058000C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580014  83 C1 00 08 */	lwz r30, 8(r1)
/* 80580018  7C 08 03 A6 */	mtlr r0
/* 8058001C  38 21 00 10 */	addi r1, r1, 0x10
/* 80580020  4E 80 00 20 */	blr 

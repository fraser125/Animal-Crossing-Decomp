lbl_804DBF94:
/* 804DBF94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DBF98  7C 08 02 A6 */	mflr r0
/* 804DBF9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DBFA0  39 61 00 30 */	addi r11, r1, 0x30
/* 804DBFA4  4B BB EF 1D */	bl func_8009AEC0
/* 804DBFA8  3D 20 80 64 */	lis r9, lit_604@ha /* 0x80646568@ha */
/* 804DBFAC  7C DB 33 78 */	mr r27, r6
/* 804DBFB0  7D 1D 43 78 */	mr r29, r8
/* 804DBFB4  7C FC 3B 78 */	mr r28, r7
/* 804DBFB8  7C 99 23 78 */	mr r25, r4
/* 804DBFBC  7C BA 2B 78 */	mr r26, r5
/* 804DBFC0  C0 29 65 68 */	lfs f1, lit_604@l(r9)  /* 0x80646568@l */
/* 804DBFC4  7C 78 1B 78 */	mr r24, r3
/* 804DBFC8  7F 64 DB 78 */	mr r4, r27
/* 804DBFCC  7F 85 E3 78 */	mr r5, r28
/* 804DBFD0  7F A6 EB 78 */	mr r6, r29
/* 804DBFD4  4B FF FF 41 */	bl Player_actor_Check_able_shake_tree_table
/* 804DBFD8  2C 03 00 00 */	cmpwi r3, 0
/* 804DBFDC  40 82 00 0C */	bne lbl_804DBFE8
/* 804DBFE0  38 60 00 00 */	li r3, 0
/* 804DBFE4  48 00 01 30 */	b lbl_804DC114
lbl_804DBFE8:
/* 804DBFE8  2C 1D 00 00 */	cmpwi r29, 0
/* 804DBFEC  3B F8 11 B4 */	addi r31, r24, 0x11b4
/* 804DBFF0  38 78 11 C0 */	addi r3, r24, 0x11c0
/* 804DBFF4  38 98 11 CC */	addi r4, r24, 0x11cc
/* 804DBFF8  3B D8 11 D8 */	addi r30, r24, 0x11d8
/* 804DBFFC  40 82 00 80 */	bne lbl_804DC07C
/* 804DC000  38 00 00 03 */	li r0, 3
/* 804DC004  7C 09 03 A6 */	mtctr r0
lbl_804DC008:
/* 804DC008  80 03 00 00 */	lwz r0, 0(r3)
/* 804DC00C  7C 00 D8 00 */	cmpw r0, r27
/* 804DC010  40 82 00 48 */	bne lbl_804DC058
/* 804DC014  2C 1C 00 00 */	cmpwi r28, 0
/* 804DC018  93 84 00 00 */	stw r28, 0(r4)
/* 804DC01C  41 82 00 3C */	beq lbl_804DC058
/* 804DC020  7F 23 CB 78 */	mr r3, r25
/* 804DC024  7F 44 D3 78 */	mr r4, r26
/* 804DC028  7F 66 DB 78 */	mr r6, r27
/* 804DC02C  7F 87 E3 78 */	mr r7, r28
/* 804DC030  38 A0 00 04 */	li r5, 4
/* 804DC034  4B FF F4 5D */	bl Player_actor_Set_EffectBgTree
/* 804DC038  3C 60 80 64 */	lis r3, lit_4067@ha /* 0x80647A8C@ha */
/* 804DC03C  38 00 00 00 */	li r0, 0
/* 804DC040  38 83 7A 8C */	addi r4, r3, lit_4067@l /* 0x80647A8C@l */
/* 804DC044  38 60 00 01 */	li r3, 1
/* 804DC048  C0 04 00 00 */	lfs f0, 0(r4)
/* 804DC04C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804DC050  90 1E 00 00 */	stw r0, 0(r30)
/* 804DC054  48 00 00 C0 */	b lbl_804DC114
lbl_804DC058:
/* 804DC058  3B FF 00 04 */	addi r31, r31, 4
/* 804DC05C  38 63 00 04 */	addi r3, r3, 4
/* 804DC060  38 84 00 04 */	addi r4, r4, 4
/* 804DC064  3B DE 00 04 */	addi r30, r30, 4
/* 804DC068  42 00 FF A0 */	bdnz lbl_804DC008
/* 804DC06C  3B F8 11 B4 */	addi r31, r24, 0x11b4
/* 804DC070  38 78 11 C0 */	addi r3, r24, 0x11c0
/* 804DC074  38 98 11 CC */	addi r4, r24, 0x11cc
/* 804DC078  3B D8 11 D8 */	addi r30, r24, 0x11d8
lbl_804DC07C:
/* 804DC07C  38 00 00 03 */	li r0, 3
/* 804DC080  7C 09 03 A6 */	mtctr r0
lbl_804DC084:
/* 804DC084  80 03 00 00 */	lwz r0, 0(r3)
/* 804DC088  2C 00 00 00 */	cmpwi r0, 0
/* 804DC08C  41 80 00 10 */	blt lbl_804DC09C
/* 804DC090  80 04 00 00 */	lwz r0, 0(r4)
/* 804DC094  2C 00 00 00 */	cmpwi r0, 0
/* 804DC098  40 80 00 64 */	bge lbl_804DC0FC
lbl_804DC09C:
/* 804DC09C  2C 1D 00 00 */	cmpwi r29, 0
/* 804DC0A0  38 00 00 04 */	li r0, 4
/* 804DC0A4  41 82 00 08 */	beq lbl_804DC0AC
/* 804DC0A8  38 00 00 03 */	li r0, 3
lbl_804DC0AC:
/* 804DC0AC  93 63 00 00 */	stw r27, 0(r3)
/* 804DC0B0  2C 1D 00 00 */	cmpwi r29, 0
/* 804DC0B4  7C 05 07 34 */	extsh r5, r0
/* 804DC0B8  93 84 00 00 */	stw r28, 0(r4)
/* 804DC0BC  41 82 00 14 */	beq lbl_804DC0D0
/* 804DC0C0  3C 60 80 64 */	lis r3, lit_4068@ha /* 0x80647A90@ha */
/* 804DC0C4  C0 03 7A 90 */	lfs f0, lit_4068@l(r3)  /* 0x80647A90@l */
/* 804DC0C8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804DC0CC  48 00 00 10 */	b lbl_804DC0DC
lbl_804DC0D0:
/* 804DC0D0  3C 60 80 64 */	lis r3, lit_4067@ha /* 0x80647A8C@ha */
/* 804DC0D4  C0 03 7A 8C */	lfs f0, lit_4067@l(r3)  /* 0x80647A8C@l */
/* 804DC0D8  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_804DC0DC:
/* 804DC0DC  93 BE 00 00 */	stw r29, 0(r30)
/* 804DC0E0  7F 23 CB 78 */	mr r3, r25
/* 804DC0E4  7F 44 D3 78 */	mr r4, r26
/* 804DC0E8  7F 66 DB 78 */	mr r6, r27
/* 804DC0EC  7F 87 E3 78 */	mr r7, r28
/* 804DC0F0  4B FF F3 A1 */	bl Player_actor_Set_EffectBgTree
/* 804DC0F4  38 60 00 01 */	li r3, 1
/* 804DC0F8  48 00 00 1C */	b lbl_804DC114
lbl_804DC0FC:
/* 804DC0FC  3B FF 00 04 */	addi r31, r31, 4
/* 804DC100  38 63 00 04 */	addi r3, r3, 4
/* 804DC104  38 84 00 04 */	addi r4, r4, 4
/* 804DC108  3B DE 00 04 */	addi r30, r30, 4
/* 804DC10C  42 00 FF 78 */	bdnz lbl_804DC084
/* 804DC110  38 60 00 00 */	li r3, 0
lbl_804DC114:
/* 804DC114  39 61 00 30 */	addi r11, r1, 0x30
/* 804DC118  4B BB ED F5 */	bl func_8009AF0C
/* 804DC11C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DC120  7C 08 03 A6 */	mtlr r0
/* 804DC124  38 21 00 30 */	addi r1, r1, 0x30
/* 804DC128  4E 80 00 20 */	blr 

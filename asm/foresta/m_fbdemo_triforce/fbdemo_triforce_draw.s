lbl_803A0BF8:
/* 803A0BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A0BFC  7C 08 02 A6 */	mflr r0
/* 803A0C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A0C04  39 61 00 20 */	addi r11, r1, 0x20
/* 803A0C08  4B CF A2 CD */	bl func_8009AED4
/* 803A0C0C  7C 9F 23 78 */	mr r31, r4
/* 803A0C10  7C 7E 1B 78 */	mr r30, r3
/* 803A0C14  81 04 00 00 */	lwz r8, 0(r4)
/* 803A0C18  3C 80 E7 00 */	lis r4, 0xe700
/* 803A0C1C  38 00 00 00 */	li r0, 0
/* 803A0C20  38 61 00 08 */	addi r3, r1, 8
/* 803A0C24  91 01 00 08 */	stw r8, 8(r1)
/* 803A0C28  38 E8 00 08 */	addi r7, r8, 8
/* 803A0C2C  38 A0 00 00 */	li r5, 0
/* 803A0C30  38 C0 00 10 */	li r6, 0x10
/* 803A0C34  90 E1 00 08 */	stw r7, 8(r1)
/* 803A0C38  38 E0 00 04 */	li r7, 4
/* 803A0C3C  90 88 00 00 */	stw r4, 0(r8)
/* 803A0C40  90 08 00 04 */	stw r0, 4(r8)
/* 803A0C44  80 9E 00 00 */	lwz r4, 0(r30)
/* 803A0C48  48 04 47 29 */	bl gfx_tex_scroll2
/* 803A0C4C  81 21 00 08 */	lwz r9, 8(r1)
/* 803A0C50  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380007@ha */
/* 803A0C54  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 803A0C58  38 FE 00 10 */	addi r7, r30, 0x10
/* 803A0C5C  38 09 00 08 */	addi r0, r9, 8
/* 803A0C60  39 04 00 07 */	addi r8, r4, 0x0007 /* 0xDA380007@l */
/* 803A0C64  90 01 00 08 */	stw r0, 8(r1)
/* 803A0C68  38 05 00 24 */	addi r0, r5, 0x0024 /* 0xDB060024@l */
/* 803A0C6C  3C C0 DB 0E */	lis r6, 0xdb0e
/* 803A0C70  38 A4 00 05 */	addi r5, r4, 5
/* 803A0C74  90 09 00 00 */	stw r0, 0(r9)
/* 803A0C78  38 1E 00 50 */	addi r0, r30, 0x50
/* 803A0C7C  38 80 00 40 */	li r4, 0x40
/* 803A0C80  90 69 00 04 */	stw r3, 4(r9)
/* 803A0C84  38 61 00 08 */	addi r3, r1, 8
/* 803A0C88  81 41 00 08 */	lwz r10, 8(r1)
/* 803A0C8C  39 2A 00 08 */	addi r9, r10, 8
/* 803A0C90  91 21 00 08 */	stw r9, 8(r1)
/* 803A0C94  91 0A 00 00 */	stw r8, 0(r10)
/* 803A0C98  90 EA 00 04 */	stw r7, 4(r10)
/* 803A0C9C  81 01 00 08 */	lwz r8, 8(r1)
/* 803A0CA0  38 E8 00 08 */	addi r7, r8, 8
/* 803A0CA4  90 E1 00 08 */	stw r7, 8(r1)
/* 803A0CA8  90 C8 00 00 */	stw r6, 0(r8)
/* 803A0CAC  A0 DE 00 0C */	lhz r6, 0xc(r30)
/* 803A0CB0  90 C8 00 04 */	stw r6, 4(r8)
/* 803A0CB4  80 E1 00 08 */	lwz r7, 8(r1)
/* 803A0CB8  38 C7 00 08 */	addi r6, r7, 8
/* 803A0CBC  90 C1 00 08 */	stw r6, 8(r1)
/* 803A0CC0  90 A7 00 00 */	stw r5, 0(r7)
/* 803A0CC4  90 07 00 04 */	stw r0, 4(r7)
/* 803A0CC8  48 06 47 3D */	bl gfxalloc
/* 803A0CCC  3C A0 80 64 */	lis r5, lit_392@ha /* 0x80641EAC@ha */
/* 803A0CD0  3C 80 80 64 */	lis r4, lit_345@ha /* 0x80641E84@ha */
/* 803A0CD4  C0 25 1E AC */	lfs f1, lit_392@l(r5)  /* 0x80641EAC@l */
/* 803A0CD8  7C 7D 1B 78 */	mr r29, r3
/* 803A0CDC  C0 64 1E 84 */	lfs f3, lit_345@l(r4)  /* 0x80641E84@l */
/* 803A0CE0  FC 40 08 90 */	fmr f2, f1
/* 803A0CE4  4B CB DA F1 */	bl func_8005E7D4
/* 803A0CE8  80 81 00 08 */	lwz r4, 8(r1)
/* 803A0CEC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803A0CF0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803A0CF4  38 64 00 08 */	addi r3, r4, 8
/* 803A0CF8  90 61 00 08 */	stw r3, 8(r1)
/* 803A0CFC  90 04 00 00 */	stw r0, 0(r4)
/* 803A0D00  93 A4 00 04 */	stw r29, 4(r4)
/* 803A0D04  88 1E 00 09 */	lbz r0, 9(r30)
/* 803A0D08  2C 00 00 01 */	cmpwi r0, 1
/* 803A0D0C  41 82 00 44 */	beq lbl_803A0D50
/* 803A0D10  40 80 00 10 */	bge lbl_803A0D20
/* 803A0D14  2C 00 00 00 */	cmpwi r0, 0
/* 803A0D18  40 80 00 14 */	bge lbl_803A0D2C
/* 803A0D1C  48 00 00 78 */	b lbl_803A0D94
lbl_803A0D20:
/* 803A0D20  2C 00 00 03 */	cmpwi r0, 3
/* 803A0D24  40 80 00 70 */	bge lbl_803A0D94
/* 803A0D28  48 00 00 4C */	b lbl_803A0D74
lbl_803A0D2C:
/* 803A0D2C  80 C1 00 08 */	lwz r6, 8(r1)
/* 803A0D30  3C 60 80 EE */	lis r3, ef_wipe1_modelT@ha /* 0x80ED9AE0@ha */
/* 803A0D34  3C 80 DE 00 */	lis r4, 0xde00
/* 803A0D38  38 A6 00 08 */	addi r5, r6, 8
/* 803A0D3C  38 03 9A E0 */	addi r0, r3, ef_wipe1_modelT@l /* 0x80ED9AE0@l */
/* 803A0D40  90 A1 00 08 */	stw r5, 8(r1)
/* 803A0D44  90 86 00 00 */	stw r4, 0(r6)
/* 803A0D48  90 06 00 04 */	stw r0, 4(r6)
/* 803A0D4C  48 00 00 48 */	b lbl_803A0D94
lbl_803A0D50:
/* 803A0D50  80 C1 00 08 */	lwz r6, 8(r1)
/* 803A0D54  3C 60 80 EE */	lis r3, ef_wipe2_modelT@ha /* 0x80EDA030@ha */
/* 803A0D58  3C 80 DE 00 */	lis r4, 0xde00
/* 803A0D5C  38 A6 00 08 */	addi r5, r6, 8
/* 803A0D60  38 03 A0 30 */	addi r0, r3, ef_wipe2_modelT@l /* 0x80EDA030@l */
/* 803A0D64  90 A1 00 08 */	stw r5, 8(r1)
/* 803A0D68  90 86 00 00 */	stw r4, 0(r6)
/* 803A0D6C  90 06 00 04 */	stw r0, 4(r6)
/* 803A0D70  48 00 00 24 */	b lbl_803A0D94
lbl_803A0D74:
/* 803A0D74  80 C1 00 08 */	lwz r6, 8(r1)
/* 803A0D78  3C 60 80 EE */	lis r3, ef_wipe3_modelT@ha /* 0x80EDA588@ha */
/* 803A0D7C  3C 80 DE 00 */	lis r4, 0xde00
/* 803A0D80  38 A6 00 08 */	addi r5, r6, 8
/* 803A0D84  38 03 A5 88 */	addi r0, r3, ef_wipe3_modelT@l /* 0x80EDA588@l */
/* 803A0D88  90 A1 00 08 */	stw r5, 8(r1)
/* 803A0D8C  90 86 00 00 */	stw r4, 0(r6)
/* 803A0D90  90 06 00 04 */	stw r0, 4(r6)
lbl_803A0D94:
/* 803A0D94  80 A1 00 08 */	lwz r5, 8(r1)
/* 803A0D98  3C 60 E7 00 */	lis r3, 0xe700
/* 803A0D9C  38 00 00 00 */	li r0, 0
/* 803A0DA0  38 85 00 08 */	addi r4, r5, 8
/* 803A0DA4  90 81 00 08 */	stw r4, 8(r1)
/* 803A0DA8  90 65 00 00 */	stw r3, 0(r5)
/* 803A0DAC  90 05 00 04 */	stw r0, 4(r5)
/* 803A0DB0  80 01 00 08 */	lwz r0, 8(r1)
/* 803A0DB4  90 1F 00 00 */	stw r0, 0(r31)
/* 803A0DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A0DBC  4B CF A1 65 */	bl func_8009AF20
/* 803A0DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A0DC4  7C 08 03 A6 */	mtlr r0
/* 803A0DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A0DCC  4E 80 00 20 */	blr 

lbl_805D41B4:
/* 805D41B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D41B8  7C 08 02 A6 */	mflr r0
/* 805D41BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D41C0  39 61 00 30 */	addi r11, r1, 0x30
/* 805D41C4  4B AC 6D 11 */	bl func_8009AED4
/* 805D41C8  3C 80 80 65 */	lis r4, lit_587@ha /* 0x8064B124@ha */
/* 805D41CC  7C 7E 1B 78 */	mr r30, r3
/* 805D41D0  C0 43 06 60 */	lfs f2, 0x660(r3)
/* 805D41D4  C0 24 B1 24 */	lfs f1, lit_587@l(r4)  /* 0x8064B124@l */
/* 805D41D8  83 FE 06 68 */	lwz r31, 0x668(r30)
/* 805D41DC  EC 02 08 24 */	fdivs f0, f2, f1
/* 805D41E0  FC 00 00 1E */	fctiwz f0, f0
/* 805D41E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D41E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D41EC  7C 1F 00 00 */	cmpw r31, r0
/* 805D41F0  40 82 00 28 */	bne lbl_805D4218
/* 805D41F4  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 805D41F8  80 7E 06 6C */	lwz r3, 0x66c(r30)
/* 805D41FC  EC 00 08 24 */	fdivs f0, f0, f1
/* 805D4200  FC 00 00 1E */	fctiwz f0, f0
/* 805D4204  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D4208  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D420C  7C 00 00 D0 */	neg r0, r0
/* 805D4210  7C 03 00 00 */	cmpw r3, r0
/* 805D4214  41 82 00 AC */	beq lbl_805D42C0
lbl_805D4218:
/* 805D4218  FC 00 10 1E */	fctiwz f0, f2
/* 805D421C  38 60 00 05 */	li r3, 5
/* 805D4220  83 BE 06 6C */	lwz r29, 0x66c(r30)
/* 805D4224  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D4228  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D422C  7C 00 1B D6 */	divw r0, r0, r3
/* 805D4230  90 1E 06 68 */	stw r0, 0x668(r30)
/* 805D4234  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 805D4238  FC 00 00 1E */	fctiwz f0, f0
/* 805D423C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805D4240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D4244  7C 00 00 D0 */	neg r0, r0
/* 805D4248  7C 00 1B D6 */	divw r0, r0, r3
/* 805D424C  90 1E 06 6C */	stw r0, 0x66c(r30)
/* 805D4250  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 805D4254  1C 00 00 05 */	mulli r0, r0, 5
/* 805D4258  90 1E 06 50 */	stw r0, 0x650(r30)
/* 805D425C  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 805D4260  7C 00 00 D0 */	neg r0, r0
/* 805D4264  1C 00 00 05 */	mulli r0, r0, 5
/* 805D4268  90 1E 06 54 */	stw r0, 0x654(r30)
/* 805D426C  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 805D4270  2C 00 00 02 */	cmpwi r0, 2
/* 805D4274  41 82 00 20 */	beq lbl_805D4294
/* 805D4278  40 80 00 28 */	bge lbl_805D42A0
/* 805D427C  2C 00 00 01 */	cmpwi r0, 1
/* 805D4280  40 80 00 08 */	bge lbl_805D4288
/* 805D4284  48 00 00 1C */	b lbl_805D42A0
lbl_805D4288:
/* 805D4288  38 60 04 51 */	li r3, 0x451
/* 805D428C  48 05 9A 79 */	bl sAdo_SysTrgStart
/* 805D4290  48 00 00 18 */	b lbl_805D42A8
lbl_805D4294:
/* 805D4294  38 60 04 52 */	li r3, 0x452
/* 805D4298  48 05 9A 6D */	bl sAdo_SysTrgStart
/* 805D429C  48 00 00 0C */	b lbl_805D42A8
lbl_805D42A0:
/* 805D42A0  38 60 04 50 */	li r3, 0x450
/* 805D42A4  48 05 9A 61 */	bl sAdo_SysTrgStart
lbl_805D42A8:
/* 805D42A8  80 DE 06 68 */	lwz r6, 0x668(r30)
/* 805D42AC  7F C3 F3 78 */	mr r3, r30
/* 805D42B0  80 FE 06 6C */	lwz r7, 0x66c(r30)
/* 805D42B4  7F E4 FB 78 */	mr r4, r31
/* 805D42B8  7F A5 EB 78 */	mr r5, r29
/* 805D42BC  4B FF EB 79 */	bl mDE_waku_line
lbl_805D42C0:
/* 805D42C0  7F C3 F3 78 */	mr r3, r30
/* 805D42C4  4B FF D3 69 */	bl mDE_cursor_analog_move
/* 805D42C8  39 61 00 30 */	addi r11, r1, 0x30
/* 805D42CC  4B AC 6C 55 */	bl func_8009AF20
/* 805D42D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D42D4  7C 08 03 A6 */	mtlr r0
/* 805D42D8  38 21 00 30 */	addi r1, r1, 0x30
/* 805D42DC  4E 80 00 20 */	blr 

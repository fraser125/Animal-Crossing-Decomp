lbl_80410114:
/* 80410114  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80410118  7C 08 02 A6 */	mflr r0
/* 8041011C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80410120  39 61 00 30 */	addi r11, r1, 0x30
/* 80410124  4B C8 AD B1 */	bl func_8009AED4
/* 80410128  7C 9D 23 78 */	mr r29, r4
/* 8041012C  7C 7E 1B 78 */	mr r30, r3
/* 80410130  7C BF 2B 78 */	mr r31, r5
/* 80410134  7F A3 EB 78 */	mr r3, r29
/* 80410138  4B FF FD F9 */	bl aAp_LeanAirplane
/* 8041013C  3C 60 80 64 */	lis r3, lit_462@ha /* 0x806437A0@ha */
/* 80410140  C0 1D 01 8C */	lfs f0, 0x18c(r29)
/* 80410144  C0 23 37 A0 */	lfs f1, lit_462@l(r3)  /* 0x806437A0@l */
/* 80410148  EC 21 00 32 */	fmuls f1, f1, f0
/* 8041014C  4B FF 87 A1 */	bl cosf_table
/* 80410150  C0 1D 01 78 */	lfs f0, 0x178(r29)
/* 80410154  3C 60 80 64 */	lis r3, lit_462@ha /* 0x806437A0@ha */
/* 80410158  EC 00 00 72 */	fmuls f0, f0, f1
/* 8041015C  C0 23 37 A0 */	lfs f1, lit_462@l(r3)  /* 0x806437A0@l */
/* 80410160  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80410164  C0 1D 01 8C */	lfs f0, 0x18c(r29)
/* 80410168  EC 21 00 32 */	fmuls f1, f1, f0
/* 8041016C  4B FF 87 11 */	bl sinf_table
/* 80410170  C0 1D 01 78 */	lfs f0, 0x178(r29)
/* 80410174  3C 80 80 64 */	lis r4, lit_461@ha /* 0x8064379C@ha */
/* 80410178  3C 60 80 64 */	lis r3, lit_462@ha /* 0x806437A0@ha */
/* 8041017C  C0 44 37 9C */	lfs f2, lit_461@l(r4)  /* 0x8064379C@l */
/* 80410180  EC 00 00 72 */	fmuls f0, f0, f1
/* 80410184  C0 23 37 A0 */	lfs f1, lit_462@l(r3)  /* 0x806437A0@l */
/* 80410188  7F C3 F3 78 */	mr r3, r30
/* 8041018C  D0 1D 01 7C */	stfs f0, 0x17c(r29)
/* 80410190  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80410194  C0 1D 01 7C */	lfs f0, 0x17c(r29)
/* 80410198  EC 03 00 28 */	fsubs f0, f3, f0
/* 8041019C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 804101A0  C0 1D 01 88 */	lfs f0, 0x188(r29)
/* 804101A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804101A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804101AC  FC 00 00 1E */	fctiwz f0, f0
/* 804101B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804101B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804101B8  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 804101BC  C0 1D 01 88 */	lfs f0, 0x188(r29)
/* 804101C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804101C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804101C8  FC 00 00 1E */	fctiwz f0, f0
/* 804101CC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804101D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804101D4  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 804101D8  4B F6 41 3D */	bl Actor_position_moveF
/* 804101DC  4B F8 5D D5 */	bl getJoystick_X
/* 804101E0  90 7D 01 98 */	stw r3, 0x198(r29)
/* 804101E4  4B F8 5E 11 */	bl getJoystick_Y
/* 804101E8  90 7D 01 94 */	stw r3, 0x194(r29)
/* 804101EC  A8 1D 01 74 */	lha r0, 0x174(r29)
/* 804101F0  2C 00 00 05 */	cmpwi r0, 5
/* 804101F4  41 82 00 54 */	beq lbl_80410248
/* 804101F8  40 80 00 18 */	bge lbl_80410210
/* 804101FC  2C 00 00 04 */	cmpwi r0, 4
/* 80410200  40 80 00 18 */	bge lbl_80410218
/* 80410204  2C 00 00 00 */	cmpwi r0, 0
/* 80410208  40 80 00 1C */	bge lbl_80410224
/* 8041020C  48 00 00 3C */	b lbl_80410248
lbl_80410210:
/* 80410210  2C 00 00 07 */	cmpwi r0, 7
/* 80410214  40 80 00 34 */	bge lbl_80410248
lbl_80410218:
/* 80410218  38 00 00 00 */	li r0, 0
/* 8041021C  98 1E 01 08 */	stb r0, 0x108(r30)
/* 80410220  48 00 00 30 */	b lbl_80410250
lbl_80410224:
/* 80410224  3C 60 80 64 */	lis r3, lit_638@ha /* 0x80643820@ha */
/* 80410228  C0 3D 01 80 */	lfs f1, 0x180(r29)
/* 8041022C  38 83 38 20 */	addi r4, r3, lit_638@l /* 0x80643820@l */
/* 80410230  38 7D 01 88 */	addi r3, r29, 0x188
/* 80410234  C0 44 00 00 */	lfs f2, 0(r4)
/* 80410238  4B FF F5 29 */	bl func_8040F760
/* 8041023C  38 00 00 01 */	li r0, 1
/* 80410240  98 1E 01 08 */	stb r0, 0x108(r30)
/* 80410244  48 00 00 0C */	b lbl_80410250
lbl_80410248:
/* 80410248  38 00 00 01 */	li r0, 1
/* 8041024C  98 1E 01 08 */	stb r0, 0x108(r30)
lbl_80410250:
/* 80410250  7F C3 F3 78 */	mr r3, r30
/* 80410254  7F E4 FB 78 */	mr r4, r31
/* 80410258  4B FF FD 6D */	bl aAp_WindSystem
/* 8041025C  39 61 00 30 */	addi r11, r1, 0x30
/* 80410260  4B C8 AC C1 */	bl func_8009AF20
/* 80410264  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80410268  7C 08 03 A6 */	mtlr r0
/* 8041026C  38 21 00 30 */	addi r1, r1, 0x30
/* 80410270  4E 80 00 20 */	blr 

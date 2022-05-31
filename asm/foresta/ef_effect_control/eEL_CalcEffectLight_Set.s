lbl_804CE5C8:
/* 804CE5C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804CE5CC  7C 08 02 A6 */	mflr r0
/* 804CE5D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804CE5D4  39 61 00 60 */	addi r11, r1, 0x60
/* 804CE5D8  4B BC C8 FD */	bl func_8009AED4
/* 804CE5DC  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE5E0  3B E3 2C EC */	addi r31, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE5E4  A8 7F 00 00 */	lha r3, 0(r31)
/* 804CE5E8  A9 1F 00 0C */	lha r8, 0xc(r31)
/* 804CE5EC  7C 03 40 00 */	cmpw r3, r8
/* 804CE5F0  40 81 00 30 */	ble lbl_804CE620
/* 804CE5F4  4B FF FF 8D */	bl eEL_InitEffectLight
/* 804CE5F8  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CE5FC  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE600  38 84 08 40 */	addi r4, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CE604  38 00 00 00 */	li r0, 0
/* 804CE608  38 63 2C EC */	addi r3, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE60C  98 04 24 9D */	stb r0, 0x249d(r4)
/* 804CE610  98 04 24 9E */	stb r0, 0x249e(r4)
/* 804CE614  98 04 24 9F */	stb r0, 0x249f(r4)
/* 804CE618  90 03 00 10 */	stw r0, 0x10(r3)
/* 804CE61C  48 00 02 C8 */	b lbl_804CE8E4
lbl_804CE620:
/* 804CE620  A8 BF 00 0A */	lha r5, 0xa(r31)
/* 804CE624  7C 03 28 00 */	cmpw r3, r5
/* 804CE628  40 80 01 4C */	bge lbl_804CE774
/* 804CE62C  89 1F 00 02 */	lbz r8, 2(r31)
/* 804CE630  3C E0 43 30 */	lis r7, 0x4330 /* 0x43300003@ha */
/* 804CE634  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CE638  88 1F 00 06 */	lbz r0, 6(r31)
/* 804CE63C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CE640  3C C0 80 64 */	lis r6, lit_588@ha /* 0x806462CC@ha */
/* 804CE644  3F C4 00 02 */	addis r30, r4, 2
/* 804CE648  91 01 00 0C */	stw r8, 0xc(r1)
/* 804CE64C  38 86 62 CC */	addi r4, r6, lit_588@l /* 0x806462CC@l */
/* 804CE650  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 804CE654  90 E1 00 08 */	stw r7, 8(r1)
/* 804CE658  C8 44 00 00 */	lfd f2, 0(r4)
/* 804CE65C  38 80 00 00 */	li r4, 0
/* 804CE660  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CE664  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE668  EC 20 10 28 */	fsubs f1, f0, f2
/* 804CE66C  81 86 00 14 */	lwz r12, 0x14(r6)
/* 804CE670  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804CE674  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804CE678  EC 40 10 28 */	fsubs f2, f0, f2
/* 804CE67C  7D 89 03 A6 */	mtctr r12
/* 804CE680  4E 80 04 21 */	bctrl 
/* 804CE684  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE688  3C A0 43 30 */	lis r5, 0x4330
/* 804CE68C  38 E3 2C EC */	addi r7, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE690  FC 20 08 1E */	fctiwz f1, f1
/* 804CE694  88 87 00 03 */	lbz r4, 0x0003(r7)  /* 0x43300003@l */
/* 804CE698  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806462CC@ha */
/* 804CE69C  88 07 00 07 */	lbz r0, 7(r7)
/* 804CE6A0  38 C3 62 CC */	addi r6, r3, lit_588@l /* 0x806462CC@l */
/* 804CE6A4  90 81 00 24 */	stw r4, 0x24(r1)
/* 804CE6A8  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 804CE6AC  38 80 00 00 */	li r4, 0
/* 804CE6B0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804CE6B4  C8 46 00 00 */	lfd f2, 0(r6)
/* 804CE6B8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804CE6BC  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 804CE6C0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804CE6C4  EC 20 10 28 */	fsubs f1, f0, f2
/* 804CE6C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804CE6CC  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 804CE6D0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 804CE6D4  A8 67 00 00 */	lha r3, 0(r7)
/* 804CE6D8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804CE6DC  A8 BF 00 0A */	lha r5, 0xa(r31)
/* 804CE6E0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804CE6E4  7D 89 03 A6 */	mtctr r12
/* 804CE6E8  4E 80 04 21 */	bctrl 
/* 804CE6EC  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE6F0  3C A0 43 30 */	lis r5, 0x4330
/* 804CE6F4  38 E3 2C EC */	addi r7, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE6F8  FC 20 08 1E */	fctiwz f1, f1
/* 804CE6FC  88 87 00 04 */	lbz r4, 4(r7)
/* 804CE700  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806462CC@ha */
/* 804CE704  88 07 00 08 */	lbz r0, 8(r7)
/* 804CE708  38 C3 62 CC */	addi r6, r3, lit_588@l /* 0x806462CC@l */
/* 804CE70C  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804CE710  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 804CE714  38 80 00 00 */	li r4, 0
/* 804CE718  90 A1 00 38 */	stw r5, 0x38(r1)
/* 804CE71C  C8 46 00 00 */	lfd f2, 0(r6)
/* 804CE720  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804CE724  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 804CE728  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804CE72C  EC 20 10 28 */	fsubs f1, f0, f2
/* 804CE730  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CE734  83 C1 00 34 */	lwz r30, 0x34(r1)
/* 804CE738  90 A1 00 40 */	stw r5, 0x40(r1)
/* 804CE73C  A8 67 00 00 */	lha r3, 0(r7)
/* 804CE740  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 804CE744  A8 BF 00 0A */	lha r5, 0xa(r31)
/* 804CE748  EC 40 10 28 */	fsubs f2, f0, f2
/* 804CE74C  7D 89 03 A6 */	mtctr r12
/* 804CE750  4E 80 04 21 */	bctrl 
/* 804CE754  FC 00 08 1E */	fctiwz f0, f1
/* 804CE758  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE75C  38 63 2C EC */	addi r3, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE760  38 00 00 01 */	li r0, 1
/* 804CE764  90 03 00 10 */	stw r0, 0x10(r3)
/* 804CE768  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804CE76C  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 804CE770  48 00 01 4C */	b lbl_804CE8BC
lbl_804CE774:
/* 804CE774  88 DF 00 06 */	lbz r6, 6(r31)
/* 804CE778  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CE77C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CE780  3C 00 43 30 */	lis r0, 0x4330
/* 804CE784  3F C4 00 02 */	addis r30, r4, 2
/* 804CE788  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 804CE78C  3C 80 80 64 */	lis r4, lit_588@ha /* 0x806462CC@ha */
/* 804CE790  3C C0 80 64 */	lis r6, lit_445@ha /* 0x80646288@ha */
/* 804CE794  38 E4 62 CC */	addi r7, r4, lit_588@l /* 0x806462CC@l */
/* 804CE798  90 01 00 48 */	stw r0, 0x48(r1)
/* 804CE79C  80 9E 60 9C */	lwz r4, 0x609c(r30)
/* 804CE7A0  C8 27 00 00 */	lfd f1, 0(r7)
/* 804CE7A4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804CE7A8  81 84 00 14 */	lwz r12, 0x14(r4)
/* 804CE7AC  7C A4 2B 78 */	mr r4, r5
/* 804CE7B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CE7B4  7D 05 43 78 */	mr r5, r8
/* 804CE7B8  C0 46 62 88 */	lfs f2, lit_445@l(r6)  /* 0x80646288@l */
/* 804CE7BC  7D 89 03 A6 */	mtctr r12
/* 804CE7C0  4E 80 04 21 */	bctrl 
/* 804CE7C4  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE7C8  3C 00 43 30 */	lis r0, 0x4330
/* 804CE7CC  38 E3 2C EC */	addi r7, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE7D0  FC 40 08 1E */	fctiwz f2, f1
/* 804CE7D4  88 87 00 07 */	lbz r4, 7(r7)
/* 804CE7D8  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806462CC@ha */
/* 804CE7DC  38 A3 62 CC */	addi r5, r3, lit_588@l /* 0x806462CC@l */
/* 804CE7E0  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 804CE7E4  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804CE7E8  3C 80 80 64 */	lis r4, lit_445@ha /* 0x80646288@ha */
/* 804CE7EC  C8 25 00 00 */	lfd f1, 0(r5)
/* 804CE7F0  90 01 00 38 */	stw r0, 0x38(r1)
/* 804CE7F4  38 C4 62 88 */	addi r6, r4, lit_445@l /* 0x80646288@l */
/* 804CE7F8  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804CE7FC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804CE800  D8 41 00 40 */	stfd f2, 0x40(r1)
/* 804CE804  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CE808  A8 67 00 00 */	lha r3, 0(r7)
/* 804CE80C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 804CE810  A8 9F 00 0A */	lha r4, 0xa(r31)
/* 804CE814  A8 BF 00 0C */	lha r5, 0xc(r31)
/* 804CE818  C0 46 00 00 */	lfs f2, 0(r6)
/* 804CE81C  7D 89 03 A6 */	mtctr r12
/* 804CE820  4E 80 04 21 */	bctrl 
/* 804CE824  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE828  3C 00 43 30 */	lis r0, 0x4330
/* 804CE82C  38 E3 2C EC */	addi r7, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE830  FC 40 08 1E */	fctiwz f2, f1
/* 804CE834  88 87 00 08 */	lbz r4, 8(r7)
/* 804CE838  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806462CC@ha */
/* 804CE83C  38 A3 62 CC */	addi r5, r3, lit_588@l /* 0x806462CC@l */
/* 804CE840  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 804CE844  90 81 00 2C */	stw r4, 0x2c(r1)
/* 804CE848  3C 80 80 64 */	lis r4, lit_445@ha /* 0x80646288@ha */
/* 804CE84C  C8 25 00 00 */	lfd f1, 0(r5)
/* 804CE850  90 01 00 28 */	stw r0, 0x28(r1)
/* 804CE854  38 C4 62 88 */	addi r6, r4, lit_445@l /* 0x80646288@l */
/* 804CE858  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804CE85C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804CE860  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 804CE864  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CE868  A8 67 00 00 */	lha r3, 0(r7)
/* 804CE86C  83 C1 00 34 */	lwz r30, 0x34(r1)
/* 804CE870  A8 9F 00 0A */	lha r4, 0xa(r31)
/* 804CE874  A8 BF 00 0C */	lha r5, 0xc(r31)
/* 804CE878  C0 46 00 00 */	lfs f2, 0(r6)
/* 804CE87C  7D 89 03 A6 */	mtctr r12
/* 804CE880  4E 80 04 21 */	bctrl 
/* 804CE884  FC 00 08 1E */	fctiwz f0, f1
/* 804CE888  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE88C  38 83 2C EC */	addi r4, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE890  A8 1F 00 0A */	lha r0, 0xa(r31)
/* 804CE894  A8 64 00 00 */	lha r3, 0(r4)
/* 804CE898  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804CE89C  7C 03 00 00 */	cmpw r3, r0
/* 804CE8A0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804CE8A4  40 82 00 10 */	bne lbl_804CE8B4
/* 804CE8A8  38 00 00 02 */	li r0, 2
/* 804CE8AC  90 04 00 10 */	stw r0, 0x10(r4)
/* 804CE8B0  48 00 00 0C */	b lbl_804CE8BC
lbl_804CE8B4:
/* 804CE8B4  38 00 00 03 */	li r0, 3
/* 804CE8B8  90 04 00 10 */	stw r0, 0x10(r4)
lbl_804CE8BC:
/* 804CE8BC  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE8C0  3C A0 81 1D */	lis r5, data_811D0840@ha /* 0x811D0840@ha */
/* 804CE8C4  38 83 2C EC */	addi r4, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE8C8  A8 64 00 00 */	lha r3, 0(r4)
/* 804CE8CC  38 A5 08 40 */	addi r5, r5, data_811D0840@l /* 0x811D0840@l */
/* 804CE8D0  9B A5 24 9D */	stb r29, 0x249d(r5)
/* 804CE8D4  38 03 00 01 */	addi r0, r3, 1
/* 804CE8D8  9B C5 24 9E */	stb r30, 0x249e(r5)
/* 804CE8DC  98 C5 24 9F */	stb r6, 0x249f(r5)
/* 804CE8E0  B0 04 00 00 */	sth r0, 0(r4)
lbl_804CE8E4:
/* 804CE8E4  39 61 00 60 */	addi r11, r1, 0x60
/* 804CE8E8  4B BC C6 39 */	bl func_8009AF20
/* 804CE8EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804CE8F0  7C 08 03 A6 */	mtlr r0
/* 804CE8F4  38 21 00 60 */	addi r1, r1, 0x60
/* 804CE8F8  4E 80 00 20 */	blr 

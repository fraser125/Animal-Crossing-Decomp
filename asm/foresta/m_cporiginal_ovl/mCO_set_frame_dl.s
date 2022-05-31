lbl_805CE710:
/* 805CE710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CE714  7C 08 02 A6 */	mflr r0
/* 805CE718  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CE71C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CE720  4B AC C7 AD */	bl func_8009AECC
/* 805CE724  3C C0 80 65 */	lis r6, lit_567@ha /* 0x8064B000@ha */
/* 805CE728  7C 7E 1B 78 */	mr r30, r3
/* 805CE72C  38 66 B0 00 */	addi r3, r6, lit_567@l /* 0x8064B000@l */
/* 805CE730  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 805CE734  C0 23 00 00 */	lfs f1, 0(r3)
/* 805CE738  3C 60 80 65 */	lis r3, lit_568@ha /* 0x8064B004@ha */
/* 805CE73C  C0 63 B0 04 */	lfs f3, lit_568@l(r3)  /* 0x8064B004@l */
/* 805CE740  7C 9F 23 78 */	mr r31, r4
/* 805CE744  FC 40 08 90 */	fmr f2, f1
/* 805CE748  83 A6 09 DC */	lwz r29, 0x9dc(r6)
/* 805CE74C  7C BB 2B 78 */	mr r27, r5
/* 805CE750  38 60 00 00 */	li r3, 0
/* 805CE754  4B E3 DC 99 */	bl Matrix_scale
/* 805CE758  A8 1D 00 0C */	lha r0, 0xc(r29)
/* 805CE75C  2C 00 00 00 */	cmpwi r0, 0
/* 805CE760  41 82 00 C0 */	beq lbl_805CE820
/* 805CE764  88 7D 00 04 */	lbz r3, 4(r29)
/* 805CE768  88 1D 00 0E */	lbz r0, 0xe(r29)
/* 805CE76C  7C 03 00 40 */	cmplw r3, r0
/* 805CE770  40 82 00 18 */	bne lbl_805CE788
/* 805CE774  88 DD 00 05 */	lbz r6, 5(r29)
/* 805CE778  7F C3 F3 78 */	mr r3, r30
/* 805CE77C  7F E4 FB 78 */	mr r4, r31
/* 805CE780  7F 65 DB 78 */	mr r5, r27
/* 805CE784  4B FF FE D1 */	bl mCO_set_frame_change_dl
lbl_805CE788:
/* 805CE788  8B 9D 00 0E */	lbz r28, 0xe(r29)
/* 805CE78C  4B E3 DA 49 */	bl Matrix_push
/* 805CE790  3C 60 80 65 */	lis r3, lit_569@ha /* 0x8064B008@ha */
/* 805CE794  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 805CE798  C0 63 B0 08 */	lfs f3, lit_569@l(r3)  /* 0x8064B008@l */
/* 805CE79C  38 60 00 01 */	li r3, 1
/* 805CE7A0  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 805CE7A4  4B E3 DB 5D */	bl Matrix_translate
/* 805CE7A8  7F C3 F3 78 */	mr r3, r30
/* 805CE7AC  7F E4 FB 78 */	mr r4, r31
/* 805CE7B0  7F 85 E3 78 */	mr r5, r28
/* 805CE7B4  4B FF F8 ED */	bl mCO_set_frame_main_dl
/* 805CE7B8  7F C3 F3 78 */	mr r3, r30
/* 805CE7BC  7F E4 FB 78 */	mr r4, r31
/* 805CE7C0  7F 85 E3 78 */	mr r5, r28
/* 805CE7C4  4B FF F7 91 */	bl mCO_set_frame_ueT_dl
/* 805CE7C8  7F C3 F3 78 */	mr r3, r30
/* 805CE7CC  7F E4 FB 78 */	mr r4, r31
/* 805CE7D0  7F 85 E3 78 */	mr r5, r28
/* 805CE7D4  4B FF F6 49 */	bl mCO_set_frame_tagT_dl
/* 805CE7D8  3C 60 80 65 */	lis r3, lit_651@ha /* 0x8064B00C@ha */
/* 805CE7DC  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 805CE7E0  38 83 B0 0C */	addi r4, r3, lit_651@l /* 0x8064B00C@l */
/* 805CE7E4  7F C3 F3 78 */	mr r3, r30
/* 805CE7E8  C0 24 00 00 */	lfs f1, 0(r4)
/* 805CE7EC  7F E4 FB 78 */	mr r4, r31
/* 805CE7F0  7F 85 E3 78 */	mr r5, r28
/* 805CE7F4  4B FF FB 9D */	bl mCO_set_frame_string_dl
/* 805CE7F8  4B E3 DA 1D */	bl Matrix_pull
/* 805CE7FC  88 DD 00 04 */	lbz r6, 4(r29)
/* 805CE800  88 1D 00 0E */	lbz r0, 0xe(r29)
/* 805CE804  7C 06 00 40 */	cmplw r6, r0
/* 805CE808  41 82 00 98 */	beq lbl_805CE8A0
/* 805CE80C  7F C3 F3 78 */	mr r3, r30
/* 805CE810  7F E4 FB 78 */	mr r4, r31
/* 805CE814  7F 65 DB 78 */	mr r5, r27
/* 805CE818  4B FF FE 3D */	bl mCO_set_frame_change_dl
/* 805CE81C  48 00 00 84 */	b lbl_805CE8A0
lbl_805CE820:
/* 805CE820  3C 60 80 65 */	lis r3, lit_569@ha /* 0x8064B008@ha */
/* 805CE824  8B BD 00 04 */	lbz r29, 4(r29)
/* 805CE828  38 83 B0 08 */	addi r4, r3, lit_569@l /* 0x8064B008@l */
/* 805CE82C  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 805CE830  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 805CE834  38 60 00 01 */	li r3, 1
/* 805CE838  C0 64 00 00 */	lfs f3, 0(r4)
/* 805CE83C  4B E3 DA C5 */	bl Matrix_translate
/* 805CE840  7F C3 F3 78 */	mr r3, r30
/* 805CE844  7F E4 FB 78 */	mr r4, r31
/* 805CE848  7F A5 EB 78 */	mr r5, r29
/* 805CE84C  4B FF F8 55 */	bl mCO_set_frame_main_dl
/* 805CE850  7F C3 F3 78 */	mr r3, r30
/* 805CE854  7F E4 FB 78 */	mr r4, r31
/* 805CE858  7F A5 EB 78 */	mr r5, r29
/* 805CE85C  4B FF F4 35 */	bl mCO_set_frame_tagS_dl
/* 805CE860  7F C3 F3 78 */	mr r3, r30
/* 805CE864  7F E4 FB 78 */	mr r4, r31
/* 805CE868  7F A5 EB 78 */	mr r5, r29
/* 805CE86C  4B FF F6 E9 */	bl mCO_set_frame_ueT_dl
/* 805CE870  7F C3 F3 78 */	mr r3, r30
/* 805CE874  7F E4 FB 78 */	mr r4, r31
/* 805CE878  7F A5 EB 78 */	mr r5, r29
/* 805CE87C  4B FF F5 A1 */	bl mCO_set_frame_tagT_dl
/* 805CE880  3C 60 80 65 */	lis r3, lit_651@ha /* 0x8064B00C@ha */
/* 805CE884  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 805CE888  38 83 B0 0C */	addi r4, r3, lit_651@l /* 0x8064B00C@l */
/* 805CE88C  7F C3 F3 78 */	mr r3, r30
/* 805CE890  C0 44 00 00 */	lfs f2, 0(r4)
/* 805CE894  7F E4 FB 78 */	mr r4, r31
/* 805CE898  7F A5 EB 78 */	mr r5, r29
/* 805CE89C  4B FF FA F5 */	bl mCO_set_frame_string_dl
lbl_805CE8A0:
/* 805CE8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CE8A4  4B AC C6 75 */	bl func_8009AF18
/* 805CE8A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CE8AC  7C 08 03 A6 */	mtlr r0
/* 805CE8B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CE8B4  4E 80 00 20 */	blr 

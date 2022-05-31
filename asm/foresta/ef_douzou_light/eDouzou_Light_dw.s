lbl_8060A8BC:
/* 8060A8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060A8C0  7C 08 02 A6 */	mflr r0
/* 8060A8C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060A8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060A8CC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8060A8D0  3C A5 00 02 */	addis r5, r5, 2
/* 8060A8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060A8D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8060A8DC  7C 7E 1B 78 */	mr r30, r3
/* 8060A8E0  7C 83 23 78 */	mr r3, r4
/* 8060A8E4  80 C5 60 9C */	lwz r6, 0x609c(r5)
/* 8060A8E8  38 9E 00 10 */	addi r4, r30, 0x10
/* 8060A8EC  38 BE 00 34 */	addi r5, r30, 0x34
/* 8060A8F0  83 E3 00 00 */	lwz r31, 0(r3)
/* 8060A8F4  81 86 00 18 */	lwz r12, 0x18(r6)
/* 8060A8F8  7D 89 03 A6 */	mtctr r12
/* 8060A8FC  4E 80 04 21 */	bctrl 
/* 8060A900  A8 1E 00 06 */	lha r0, 6(r30)
/* 8060A904  2C 00 00 01 */	cmpwi r0, 1
/* 8060A908  41 82 00 44 */	beq lbl_8060A94C
/* 8060A90C  40 80 00 10 */	bge lbl_8060A91C
/* 8060A910  2C 00 00 00 */	cmpwi r0, 0
/* 8060A914  40 80 00 14 */	bge lbl_8060A928
/* 8060A918  48 00 00 7C */	b lbl_8060A994
lbl_8060A91C:
/* 8060A91C  2C 00 00 03 */	cmpwi r0, 3
/* 8060A920  40 80 00 74 */	bge lbl_8060A994
/* 8060A924  48 00 00 4C */	b lbl_8060A970
lbl_8060A928:
/* 8060A928  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8060A92C  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFF00FF@ha */
/* 8060A930  3C 80 FB 00 */	lis r4, 0xfb00
/* 8060A934  38 A6 00 08 */	addi r5, r6, 8
/* 8060A938  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFFFF00FF@l */
/* 8060A93C  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8060A940  90 86 00 00 */	stw r4, 0(r6)
/* 8060A944  90 06 00 04 */	stw r0, 4(r6)
/* 8060A948  48 00 00 6C */	b lbl_8060A9B4
lbl_8060A94C:
/* 8060A94C  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8060A950  3C 60 C9 00 */	lis r3, 0xC900 /* 0xC8FFFFFF@ha */
/* 8060A954  3C 80 FB 00 */	lis r4, 0xfb00
/* 8060A958  38 A6 00 08 */	addi r5, r6, 8
/* 8060A95C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0xC8FFFFFF@l */
/* 8060A960  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8060A964  90 86 00 00 */	stw r4, 0(r6)
/* 8060A968  90 06 00 04 */	stw r0, 4(r6)
/* 8060A96C  48 00 00 48 */	b lbl_8060A9B4
lbl_8060A970:
/* 8060A970  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8060A974  3C 60 FF 64 */	lis r3, 0xFF64 /* 0xFF6464FF@ha */
/* 8060A978  3C 80 FB 00 */	lis r4, 0xfb00
/* 8060A97C  38 A6 00 08 */	addi r5, r6, 8
/* 8060A980  38 03 64 FF */	addi r0, r3, 0x64FF /* 0xFF6464FF@l */
/* 8060A984  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8060A988  90 86 00 00 */	stw r4, 0(r6)
/* 8060A98C  90 06 00 04 */	stw r0, 4(r6)
/* 8060A990  48 00 00 24 */	b lbl_8060A9B4
lbl_8060A994:
/* 8060A994  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8060A998  3C 60 64 FF */	lis r3, 0x64FF /* 0x64FF64FF@ha */
/* 8060A99C  3C 80 FB 00 */	lis r4, 0xfb00
/* 8060A9A0  38 A6 00 08 */	addi r5, r6, 8
/* 8060A9A4  38 03 64 FF */	addi r0, r3, 0x64FF /* 0x64FF64FF@l */
/* 8060A9A8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8060A9AC  90 86 00 00 */	stw r4, 0(r6)
/* 8060A9B0  90 06 00 04 */	stw r0, 4(r6)
lbl_8060A9B4:
/* 8060A9B4  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8060A9B8  3C 60 80 CB */	lis r3, ef_carhosi01_00_modelT@ha /* 0x80CAFFE0@ha */
/* 8060A9BC  3C 80 DE 00 */	lis r4, 0xde00
/* 8060A9C0  38 A6 00 08 */	addi r5, r6, 8
/* 8060A9C4  38 03 FF E0 */	addi r0, r3, ef_carhosi01_00_modelT@l /* 0x80CAFFE0@l */
/* 8060A9C8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8060A9CC  90 86 00 00 */	stw r4, 0(r6)
/* 8060A9D0  90 06 00 04 */	stw r0, 4(r6)
/* 8060A9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060A9D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8060A9DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060A9E0  7C 08 03 A6 */	mtlr r0
/* 8060A9E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8060A9E8  4E 80 00 20 */	blr 

lbl_8039A928:
/* 8039A928  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A92C  38 00 00 07 */	li r0, 7
/* 8039A930  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8039A934  3C A4 00 03 */	addis r5, r4, 3
/* 8039A938  38 60 00 00 */	li r3, 0
/* 8039A93C  3C 84 00 02 */	addis r4, r4, 2
/* 8039A940  7C 09 03 A6 */	mtctr r0
/* 8039A944  38 A5 DB B8 */	addi r5, r5, -9288
lbl_8039A948:
/* 8039A948  90 65 00 00 */	stw r3, 0(r5)
/* 8039A94C  38 A5 00 04 */	addi r5, r5, 4
/* 8039A950  42 00 FF F8 */	bdnz lbl_8039A948
/* 8039A954  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A958  80 84 05 50 */	lwz r4, 0x550(r4)
/* 8039A95C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A960  38 00 FF FF */	li r0, -1
/* 8039A964  3C 63 00 03 */	addis r3, r3, 3
/* 8039A968  90 83 DB BC */	stw r4, -0x2444(r3)
/* 8039A96C  B0 03 87 EC */	sth r0, -0x7814(r3)
/* 8039A970  B0 03 87 EE */	sth r0, -0x7812(r3)
/* 8039A974  4E 80 00 20 */	blr 
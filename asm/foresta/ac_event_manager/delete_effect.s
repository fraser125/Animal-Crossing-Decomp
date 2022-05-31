lbl_8041D36C:
/* 8041D36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041D370  7C 08 02 A6 */	mflr r0
/* 8041D374  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8041D378  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8041D37C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8041D380  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041D384  3C A4 00 02 */	addis r5, r4, 2
/* 8041D388  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 8041D38C  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8041D390  81 85 00 04 */	lwz r12, 4(r5)
/* 8041D394  7D 89 03 A6 */	mtctr r12
/* 8041D398  4E 80 04 21 */	bctrl 
/* 8041D39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041D3A0  7C 08 03 A6 */	mtlr r0
/* 8041D3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041D3A8  4E 80 00 20 */	blr 

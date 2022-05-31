lbl_803D1710:
/* 803D1710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D1714  7C 08 02 A6 */	mflr r0
/* 803D1718  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D171C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1720  4B CC 97 B5 */	bl func_8009AED4
/* 803D1724  3C A0 81 17 */	lis r5, dma_area@ha /* 0x8116C4D8@ha */
/* 803D1728  7C 9F 23 78 */	mr r31, r4
/* 803D172C  38 05 C4 D8 */	addi r0, r5, dma_area@l /* 0x8116C4D8@l */
/* 803D1730  7C 7D 1B 78 */	mr r29, r3
/* 803D1734  7C 03 03 78 */	mr r3, r0
/* 803D1738  38 80 00 40 */	li r4, 0x40
/* 803D173C  38 A0 00 20 */	li r5, 0x20
/* 803D1740  4B FE 93 09 */	bl mem_clear
/* 803D1744  38 60 00 1F */	li r3, 0x1f
/* 803D1748  4B C3 54 8D */	bl JW_GetAramAddress
/* 803D174C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803D1750  28 00 00 FF */	cmplwi r0, 0xff
/* 803D1754  40 80 00 4C */	bge lbl_803D17A0
/* 803D1758  28 1D 00 00 */	cmplwi r29, 0
/* 803D175C  41 82 00 44 */	beq lbl_803D17A0
/* 803D1760  28 03 00 00 */	cmplwi r3, 0
/* 803D1764  41 82 00 3C */	beq lbl_803D17A0
/* 803D1768  57 FE 1D 74 */	rlwinm r30, r31, 3, 0x15, 0x1a
/* 803D176C  3C 80 81 17 */	lis r4, dma_area@ha /* 0x8116C4D8@ha */
/* 803D1770  38 84 C4 D8 */	addi r4, r4, dma_area@l /* 0x8116C4D8@l */
/* 803D1774  57 FF 1D 78 */	rlwinm r31, r31, 3, 0x15, 0x1c
/* 803D1778  7C 7E 1A 14 */	add r3, r30, r3
/* 803D177C  38 A0 00 40 */	li r5, 0x40
/* 803D1780  4B C3 54 F5 */	bl _JW_GetResourceAram
/* 803D1784  3C 60 81 17 */	lis r3, dma_area@ha /* 0x8116C4D8@ha */
/* 803D1788  7C BE F8 50 */	subf r5, r30, r31
/* 803D178C  38 03 C4 D8 */	addi r0, r3, dma_area@l /* 0x8116C4D8@l */
/* 803D1790  7F A4 EB 78 */	mr r4, r29
/* 803D1794  7C 60 2A 14 */	add r3, r0, r5
/* 803D1798  38 A0 00 08 */	li r5, 8
/* 803D179C  4B C8 B8 81 */	bl func_8005D01C
lbl_803D17A0:
/* 803D17A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D17A4  4B CC 97 7D */	bl func_8009AF20
/* 803D17A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D17AC  7C 08 03 A6 */	mtlr r0
/* 803D17B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D17B4  4E 80 00 20 */	blr 

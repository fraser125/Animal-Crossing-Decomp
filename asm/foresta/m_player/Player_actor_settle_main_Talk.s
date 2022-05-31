lbl_804FAA20:
/* 804FAA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FAA24  7C 08 02 A6 */	mflr r0
/* 804FAA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAA2C  80 A3 0D 20 */	lwz r5, 0xd20(r3)
/* 804FAA30  2C 05 00 00 */	cmpwi r5, 0
/* 804FAA34  40 81 00 2C */	ble lbl_804FAA60
/* 804FAA38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FAA3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804FAA40  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804FAA44  38 65 FF FF */	addi r3, r5, -1
/* 804FAA48  3C A4 00 02 */	addis r5, r4, 2
/* 804FAA4C  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804FAA50  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804FAA54  81 85 00 04 */	lwz r12, 4(r5)
/* 804FAA58  7D 89 03 A6 */	mtctr r12
/* 804FAA5C  4E 80 04 21 */	bctrl 
lbl_804FAA60:
/* 804FAA60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FAA64  7C 08 03 A6 */	mtlr r0
/* 804FAA68  38 21 00 10 */	addi r1, r1, 0x10
/* 804FAA6C  4E 80 00 20 */	blr 

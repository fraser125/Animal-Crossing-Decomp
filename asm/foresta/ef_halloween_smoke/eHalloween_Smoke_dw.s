lbl_8060D6D8:
/* 8060D6D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060D6DC  7C 08 02 A6 */	mflr r0
/* 8060D6E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060D6E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8060D6E8  4B A8 D7 E5 */	bl func_8009AECC
/* 8060D6EC  7C 68 1B 78 */	mr r8, r3
/* 8060D6F0  7C 83 23 78 */	mr r3, r4
/* 8060D6F4  A8 08 00 00 */	lha r0, 0(r8)
/* 8060D6F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060D6FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8060D700  3C A0 80 6D */	lis r5, data_806D2518@ha /* 0x806D2518@ha */
/* 8060D704  20 00 00 12 */	subfic r0, r0, 0x12
/* 8060D708  83 A3 00 00 */	lwz r29, 0(r3)
/* 8060D70C  3C 84 00 02 */	addis r4, r4, 2
/* 8060D710  3B E5 25 18 */	addi r31, r5, data_806D2518@l /* 0x806D2518@l */
/* 8060D714  7C 00 07 34 */	extsh r0, r0
/* 8060D718  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 8060D71C  7C 1E 0E 70 */	srawi r30, r0, 1
/* 8060D720  38 FF 00 10 */	addi r7, r31, 0x10
/* 8060D724  57 C0 08 3C */	slwi r0, r30, 1
/* 8060D728  81 84 00 18 */	lwz r12, 0x18(r4)
/* 8060D72C  7C C7 02 14 */	add r6, r7, r0
/* 8060D730  38 88 00 10 */	addi r4, r8, 0x10
/* 8060D734  38 A8 00 34 */	addi r5, r8, 0x34
/* 8060D738  7F 87 00 AE */	lbzx r28, r7, r0
/* 8060D73C  8B 66 00 01 */	lbz r27, 1(r6)
/* 8060D740  7D 89 03 A6 */	mtctr r12
/* 8060D744  4E 80 04 21 */	bctrl 
/* 8060D748  81 7D 02 E0 */	lwz r11, 0x2e0(r29)
/* 8060D74C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8060D750  3C 80 C8 01 */	lis r4, 0xC801 /* 0xC800FF78@ha */
/* 8060D754  3C 60 80 CB */	lis r3, ef_haro01_00_modelT@ha /* 0x80CB25F0@ha */
/* 8060D758  38 0B 00 08 */	addi r0, r11, 8
/* 8060D75C  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 8060D760  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8060D764  57 80 10 3A */	slwi r0, r28, 2
/* 8060D768  39 5F 00 00 */	addi r10, r31, 0
/* 8060D76C  39 05 00 24 */	addi r8, r5, 0x24
/* 8060D770  90 CB 00 00 */	stw r6, 0(r11)
/* 8060D774  57 67 10 3A */	slwi r7, r27, 2
/* 8060D778  38 DF 00 24 */	addi r6, r31, 0x24
/* 8060D77C  38 A4 FF 78 */	addi r5, r4, 0xFF78 /* 0xC800FF78@l */
/* 8060D780  7D 2A 00 2E */	lwzx r9, r10, r0
/* 8060D784  3C 80 DE 00 */	lis r4, 0xde00
/* 8060D788  38 03 25 F0 */	addi r0, r3, ef_haro01_00_modelT@l /* 0x80CB25F0@l */
/* 8060D78C  91 2B 00 04 */	stw r9, 4(r11)
/* 8060D790  81 3D 02 E0 */	lwz r9, 0x2e0(r29)
/* 8060D794  38 69 00 08 */	addi r3, r9, 8
/* 8060D798  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8060D79C  91 09 00 00 */	stw r8, 0(r9)
/* 8060D7A0  7C 6A 38 2E */	lwzx r3, r10, r7
/* 8060D7A4  90 69 00 04 */	stw r3, 4(r9)
/* 8060D7A8  80 FD 02 E0 */	lwz r7, 0x2e0(r29)
/* 8060D7AC  38 67 00 08 */	addi r3, r7, 8
/* 8060D7B0  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8060D7B4  7C 66 F0 AE */	lbzx r3, r6, r30
/* 8060D7B8  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8060D7BC  90 67 00 00 */	stw r3, 0(r7)
/* 8060D7C0  90 A7 00 04 */	stw r5, 4(r7)
/* 8060D7C4  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8060D7C8  38 65 00 08 */	addi r3, r5, 8
/* 8060D7CC  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8060D7D0  90 85 00 00 */	stw r4, 0(r5)
/* 8060D7D4  90 05 00 04 */	stw r0, 4(r5)
/* 8060D7D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8060D7DC  4B A8 D7 3D */	bl func_8009AF18
/* 8060D7E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060D7E4  7C 08 03 A6 */	mtlr r0
/* 8060D7E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8060D7EC  4E 80 00 20 */	blr 

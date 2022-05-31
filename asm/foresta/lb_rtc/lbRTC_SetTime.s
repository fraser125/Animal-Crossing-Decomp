lbl_8040667C:
/* 8040667C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80406680  7C 08 02 A6 */	mflr r0
/* 80406684  90 01 00 24 */	stw r0, 0x24(r1)
/* 80406688  39 61 00 20 */	addi r11, r1, 0x20
/* 8040668C  4B C9 48 49 */	bl func_8009AED4
/* 80406690  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80406694  7C 7D 1B 78 */	mr r29, r3
/* 80406698  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8040669C  3C 63 00 02 */	addis r3, r3, 2
/* 804066A0  80 03 61 30 */	lwz r0, 0x6130(r3)
/* 804066A4  2C 00 00 01 */	cmpwi r0, 1
/* 804066A8  40 82 00 44 */	bne lbl_804066EC
/* 804066AC  88 03 61 2F */	lbz r0, 0x612f(r3)
/* 804066B0  28 00 00 00 */	cmplwi r0, 0
/* 804066B4  40 82 00 38 */	bne lbl_804066EC
/* 804066B8  4B FF FC E1 */	bl func_80406398
/* 804066BC  7C 7F 1B 78 */	mr r31, r3
/* 804066C0  7C 9E 23 78 */	mr r30, r4
/* 804066C4  7F A3 EB 78 */	mr r3, r29
/* 804066C8  4B FF FD 51 */	bl lbRTC_RTCTimeToTicks
/* 804066CC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804066D0  7C DE 20 10 */	subfc r6, r30, r4
/* 804066D4  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 804066D8  7C 1F 19 10 */	subfe r0, r31, r3
/* 804066DC  3C 64 00 02 */	addis r3, r4, 2
/* 804066E0  90 C3 25 2C */	stw r6, 0x252c(r3)
/* 804066E4  90 03 25 28 */	stw r0, 0x2528(r3)
/* 804066E8  48 00 00 1C */	b lbl_80406704
lbl_804066EC:
/* 804066EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804066F0  7F A4 EB 78 */	mr r4, r29
/* 804066F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804066F8  3C 63 00 02 */	addis r3, r3, 2
/* 804066FC  38 63 61 20 */	addi r3, r3, 0x6120
/* 80406700  48 00 0B 35 */	bl lbRTC_TimeCopy
lbl_80406704:
/* 80406704  39 61 00 20 */	addi r11, r1, 0x20
/* 80406708  4B C9 48 19 */	bl func_8009AF20
/* 8040670C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80406710  7C 08 03 A6 */	mtlr r0
/* 80406714  38 21 00 20 */	addi r1, r1, 0x20
/* 80406718  4E 80 00 20 */	blr 

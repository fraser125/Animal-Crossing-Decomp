lbl_804C2EDC:
/* 804C2EDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C2EE0  7C 08 02 A6 */	mflr r0
/* 804C2EE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C2EE8  39 61 00 20 */	addi r11, r1, 0x20
/* 804C2EEC  4B BD 7F E5 */	bl func_8009AED0
/* 804C2EF0  7C 9E 23 78 */	mr r30, r4
/* 804C2EF4  88 85 00 44 */	lbz r4, 0x44(r5)
/* 804C2EF8  89 06 00 05 */	lbz r8, 5(r6)
/* 804C2EFC  7C 7D 1B 78 */	mr r29, r3
/* 804C2F00  7C 83 07 74 */	extsb r3, r4
/* 804C2F04  80 9E 00 00 */	lwz r4, 0(r30)
/* 804C2F08  7C 68 1A 14 */	add r3, r8, r3
/* 804C2F0C  3C 00 DE 00 */	lis r0, 0xde00
/* 804C2F10  54 68 10 3A */	slwi r8, r3, 2
/* 804C2F14  7F E7 40 2E */	lwzx r31, r7, r8
/* 804C2F18  38 64 00 08 */	addi r3, r4, 8
/* 804C2F1C  90 7E 00 00 */	stw r3, 0(r30)
/* 804C2F20  90 04 00 00 */	stw r0, 0(r4)
/* 804C2F24  88 06 00 04 */	lbz r0, 4(r6)
/* 804C2F28  54 00 10 3A */	slwi r0, r0, 2
/* 804C2F2C  7C 07 00 2E */	lwzx r0, r7, r0
/* 804C2F30  90 04 00 04 */	stw r0, 4(r4)
/* 804C2F34  88 05 00 42 */	lbz r0, 0x42(r5)
/* 804C2F38  28 00 00 FF */	cmplwi r0, 0xff
/* 804C2F3C  40 82 00 4C */	bne lbl_804C2F88
/* 804C2F40  80 FE 00 00 */	lwz r7, 0(r30)
/* 804C2F44  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 804C2F48  3C 80 C8 11 */	lis r4, 0xC811 /* 0xC8113078@ha */
/* 804C2F4C  3C 60 FC 12 */	lis r3, 0xFC12 /* 0xFC127E60@ha */
/* 804C2F50  38 07 00 08 */	addi r0, r7, 8
/* 804C2F54  38 C6 00 1C */	addi r6, r6, 0x001C /* 0xE200001C@l */
/* 804C2F58  90 1E 00 00 */	stw r0, 0(r30)
/* 804C2F5C  38 84 30 78 */	addi r4, r4, 0x3078 /* 0xC8113078@l */
/* 804C2F60  38 63 7E 60 */	addi r3, r3, 0x7E60 /* 0xFC127E60@l */
/* 804C2F64  38 00 F3 F8 */	li r0, -3080
/* 804C2F68  90 C7 00 00 */	stw r6, 0(r7)
/* 804C2F6C  90 87 00 04 */	stw r4, 4(r7)
/* 804C2F70  80 DE 00 00 */	lwz r6, 0(r30)
/* 804C2F74  38 86 00 08 */	addi r4, r6, 8
/* 804C2F78  90 9E 00 00 */	stw r4, 0(r30)
/* 804C2F7C  90 66 00 00 */	stw r3, 0(r6)
/* 804C2F80  90 06 00 04 */	stw r0, 4(r6)
/* 804C2F84  48 00 00 6C */	b lbl_804C2FF0
lbl_804C2F88:
/* 804C2F88  81 1E 00 00 */	lwz r8, 0(r30)
/* 804C2F8C  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 804C2F90  3C 80 C8 10 */	lis r4, 0xC810 /* 0xC81049D8@ha */
/* 804C2F94  3C 60 FC 12 */	lis r3, 0xFC12 /* 0xFC121A60@ha */
/* 804C2F98  38 E8 00 08 */	addi r7, r8, 8
/* 804C2F9C  38 06 00 1C */	addi r0, r6, 0x001C /* 0xE200001C@l */
/* 804C2FA0  90 FE 00 00 */	stw r7, 0(r30)
/* 804C2FA4  38 C4 49 D8 */	addi r6, r4, 0x49D8 /* 0xC81049D8@l */
/* 804C2FA8  38 83 1A 60 */	addi r4, r3, 0x1A60 /* 0xFC121A60@l */
/* 804C2FAC  38 60 FF F8 */	li r3, -8
/* 804C2FB0  90 08 00 00 */	stw r0, 0(r8)
/* 804C2FB4  3C 00 FB 00 */	lis r0, 0xfb00
/* 804C2FB8  90 C8 00 04 */	stw r6, 4(r8)
/* 804C2FBC  80 FE 00 00 */	lwz r7, 0(r30)
/* 804C2FC0  38 C7 00 08 */	addi r6, r7, 8
/* 804C2FC4  90 DE 00 00 */	stw r6, 0(r30)
/* 804C2FC8  90 87 00 00 */	stw r4, 0(r7)
/* 804C2FCC  90 67 00 04 */	stw r3, 4(r7)
/* 804C2FD0  80 9E 00 00 */	lwz r4, 0(r30)
/* 804C2FD4  38 64 00 08 */	addi r3, r4, 8
/* 804C2FD8  90 7E 00 00 */	stw r3, 0(r30)
/* 804C2FDC  90 04 00 00 */	stw r0, 0(r4)
/* 804C2FE0  88 05 00 42 */	lbz r0, 0x42(r5)
/* 804C2FE4  64 00 FF FF */	oris r0, r0, 0xffff
/* 804C2FE8  60 00 FF 00 */	ori r0, r0, 0xff00
/* 804C2FEC  90 04 00 04 */	stw r0, 4(r4)
lbl_804C2FF0:
/* 804C2FF0  7C A3 2B 78 */	mr r3, r5
/* 804C2FF4  4B F4 92 65 */	bl Matrix_put
/* 804C2FF8  83 9E 00 00 */	lwz r28, 0(r30)
/* 804C2FFC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804C3000  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804C3004  7F A3 EB 78 */	mr r3, r29
/* 804C3008  38 9C 00 08 */	addi r4, r28, 8
/* 804C300C  90 9E 00 00 */	stw r4, 0(r30)
/* 804C3010  90 1C 00 00 */	stw r0, 0(r28)
/* 804C3014  4B F4 A3 C1 */	bl _Matrix_to_Mtx_new
/* 804C3018  90 7C 00 04 */	stw r3, 4(r28)
/* 804C301C  3C 00 DE 00 */	lis r0, 0xde00
/* 804C3020  80 9E 00 00 */	lwz r4, 0(r30)
/* 804C3024  38 64 00 08 */	addi r3, r4, 8
/* 804C3028  90 7E 00 00 */	stw r3, 0(r30)
/* 804C302C  90 04 00 00 */	stw r0, 0(r4)
/* 804C3030  93 E4 00 04 */	stw r31, 4(r4)
/* 804C3034  39 61 00 20 */	addi r11, r1, 0x20
/* 804C3038  4B BD 7E E5 */	bl func_8009AF1C
/* 804C303C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C3040  7C 08 03 A6 */	mtlr r0
/* 804C3044  38 21 00 20 */	addi r1, r1, 0x20
/* 804C3048  4E 80 00 20 */	blr 

lbl_80406A08:
/* 80406A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80406A0C  7C 08 02 A6 */	mflr r0
/* 80406A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80406A14  39 61 00 20 */	addi r11, r1, 0x20
/* 80406A18  4B C9 44 BD */	bl func_8009AED4
/* 80406A1C  7C 7D 1B 78 */	mr r29, r3
/* 80406A20  7C 83 23 78 */	mr r3, r4
/* 80406A24  4B FF F9 F5 */	bl lbRTC_RTCTimeToTicks
/* 80406A28  7C 7F 1B 78 */	mr r31, r3
/* 80406A2C  7C 9E 23 78 */	mr r30, r4
/* 80406A30  7F A3 EB 78 */	mr r3, r29
/* 80406A34  4B FF F9 E5 */	bl lbRTC_RTCTimeToTicks
/* 80406A38  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 80406A3C  7C 9E 20 10 */	subfc r4, r30, r4
/* 80406A40  80 05 00 F8 */	lwz r0, 0x00F8(r5)  /* 0x800000F8@l */
/* 80406A44  7C 7F 19 10 */	subfe r3, r31, r3
/* 80406A48  38 A0 00 00 */	li r5, 0
/* 80406A4C  54 06 F0 BE */	srwi r6, r0, 2
/* 80406A50  4B C9 45 CD */	bl __div2i
/* 80406A54  38 A0 00 00 */	li r5, 0
/* 80406A58  38 C0 00 3C */	li r6, 0x3c
/* 80406A5C  4B C9 45 C1 */	bl __div2i
/* 80406A60  7C 83 23 78 */	mr r3, r4
/* 80406A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80406A68  4B C9 44 B9 */	bl func_8009AF20
/* 80406A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80406A70  7C 08 03 A6 */	mtlr r0
/* 80406A74  38 21 00 20 */	addi r1, r1, 0x20
/* 80406A78  4E 80 00 20 */	blr 

lbl_803F40A0:
/* 803F40A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F40A4  7C 08 02 A6 */	mflr r0
/* 803F40A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F40AC  39 61 00 30 */	addi r11, r1, 0x30
/* 803F40B0  4B CA 6E 1D */	bl func_8009AECC
/* 803F40B4  83 E3 00 00 */	lwz r31, 0(r3)
/* 803F40B8  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 803F40BC  83 A3 00 04 */	lwz r29, 4(r3)
/* 803F40C0  83 83 00 10 */	lwz r28, 0x10(r3)
/* 803F40C4  7F C4 F3 78 */	mr r4, r30
/* 803F40C8  83 63 00 08 */	lwz r27, 8(r3)
/* 803F40CC  7F A5 EB 78 */	mr r5, r29
/* 803F40D0  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 803F40D4  7F 86 E3 78 */	mr r6, r28
/* 803F40D8  7F 67 DB 78 */	mr r7, r27
/* 803F40DC  38 61 00 08 */	addi r3, r1, 8
/* 803F40E0  90 01 00 08 */	stw r0, 8(r1)
/* 803F40E4  4B FF FE B5 */	bl setScissorX
/* 803F40E8  80 01 00 08 */	lwz r0, 8(r1)
/* 803F40EC  7F C4 F3 78 */	mr r4, r30
/* 803F40F0  7F A5 EB 78 */	mr r5, r29
/* 803F40F4  7F 86 E3 78 */	mr r6, r28
/* 803F40F8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 803F40FC  7F 67 DB 78 */	mr r7, r27
/* 803F4100  38 61 00 08 */	addi r3, r1, 8
/* 803F4104  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 803F4108  90 01 00 08 */	stw r0, 8(r1)
/* 803F410C  4B FF FE 8D */	bl setScissorX
/* 803F4110  80 01 00 08 */	lwz r0, 8(r1)
/* 803F4114  7F C4 F3 78 */	mr r4, r30
/* 803F4118  7F A5 EB 78 */	mr r5, r29
/* 803F411C  7F 86 E3 78 */	mr r6, r28
/* 803F4120  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 803F4124  7F 67 DB 78 */	mr r7, r27
/* 803F4128  38 61 00 08 */	addi r3, r1, 8
/* 803F412C  80 1F 03 00 */	lwz r0, 0x300(r31)
/* 803F4130  90 01 00 08 */	stw r0, 8(r1)
/* 803F4134  4B FF FE 65 */	bl setScissorX
/* 803F4138  80 01 00 08 */	lwz r0, 8(r1)
/* 803F413C  7F C4 F3 78 */	mr r4, r30
/* 803F4140  7F A5 EB 78 */	mr r5, r29
/* 803F4144  7F 86 E3 78 */	mr r6, r28
/* 803F4148  90 1F 03 00 */	stw r0, 0x300(r31)
/* 803F414C  7F 67 DB 78 */	mr r7, r27
/* 803F4150  38 61 00 08 */	addi r3, r1, 8
/* 803F4154  80 1F 03 10 */	lwz r0, 0x310(r31)
/* 803F4158  90 01 00 08 */	stw r0, 8(r1)
/* 803F415C  4B FF FE 3D */	bl setScissorX
/* 803F4160  80 01 00 08 */	lwz r0, 8(r1)
/* 803F4164  39 61 00 30 */	addi r11, r1, 0x30
/* 803F4168  90 1F 03 10 */	stw r0, 0x310(r31)
/* 803F416C  4B CA 6D AD */	bl func_8009AF18
/* 803F4170  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F4174  7C 08 03 A6 */	mtlr r0
/* 803F4178  38 21 00 30 */	addi r1, r1, 0x30
/* 803F417C  4E 80 00 20 */	blr 


temp.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         0000202c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000048  080020ec  080020ec  000120ec  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08002134  08002134  00012134  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  0800213c  0800213c  0001213c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000430  20000000  08002140  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          00000098  20000430  08002570  00020430  2**2  ALLOC
  7 ._user_heap_stack 00000600  200004c8  08002570  000204c8  2**0  ALLOC
  8 .ARM.attributes 00000028  00000000  00000000  00020430  2**0  CONTENTS, READONLY
  9 .comment      00000070  00000000  00000000  00020458  2**0  CONTENTS, READONLY
 10 .debug_info   0000513d  00000000  00000000  000204c8  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev 000013b2  00000000  00000000  00025605  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 000004a8  00000000  00000000  000269b8  2**3  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 00000578  00000000  00000000  00026e60  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   00001b3b  00000000  00000000  000273d8  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    00001ad7  00000000  00000000  00028f13  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_frame  00000c50  00000000  00000000  0002a9ec  2**2  CONTENTS, READONLY, DEBUGGING
 17 .debug_loc    00003015  00000000  00000000  0002b63c  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	b508      	push	{r3, lr}
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	4805      	ldr	r0, [pc, #20]	; (80000dc <deregister_tm_clones+0x1c>)
 80000c6:	3303      	adds	r3, #3
 80000c8:	1a1b      	subs	r3, r3, r0
 80000ca:	2b06      	cmp	r3, #6
 80000cc:	d903      	bls.n	80000d6 <deregister_tm_clones+0x16>
 80000ce:	4b04      	ldr	r3, [pc, #16]	; (80000e0 <deregister_tm_clones+0x20>)
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	d000      	beq.n	80000d6 <deregister_tm_clones+0x16>
 80000d4:	4798      	blx	r3
 80000d6:	bd08      	pop	{r3, pc}
 80000d8:	20000430 	.word	0x20000430
 80000dc:	20000430 	.word	0x20000430
 80000e0:	00000000 	.word	0x00000000

080000e4 <register_tm_clones>:
 80000e4:	4806      	ldr	r0, [pc, #24]	; (8000100 <register_tm_clones+0x1c>)
 80000e6:	4907      	ldr	r1, [pc, #28]	; (8000104 <register_tm_clones+0x20>)
 80000e8:	b508      	push	{r3, lr}
 80000ea:	1a09      	subs	r1, r1, r0
 80000ec:	1089      	asrs	r1, r1, #2
 80000ee:	0fcb      	lsrs	r3, r1, #31
 80000f0:	1859      	adds	r1, r3, r1
 80000f2:	1049      	asrs	r1, r1, #1
 80000f4:	d003      	beq.n	80000fe <register_tm_clones+0x1a>
 80000f6:	4b04      	ldr	r3, [pc, #16]	; (8000108 <register_tm_clones+0x24>)
 80000f8:	2b00      	cmp	r3, #0
 80000fa:	d000      	beq.n	80000fe <register_tm_clones+0x1a>
 80000fc:	4798      	blx	r3
 80000fe:	bd08      	pop	{r3, pc}
 8000100:	20000430 	.word	0x20000430
 8000104:	20000430 	.word	0x20000430
 8000108:	00000000 	.word	0x00000000

0800010c <__do_global_dtors_aux>:
 800010c:	b510      	push	{r4, lr}
 800010e:	4c07      	ldr	r4, [pc, #28]	; (800012c <__do_global_dtors_aux+0x20>)
 8000110:	7823      	ldrb	r3, [r4, #0]
 8000112:	2b00      	cmp	r3, #0
 8000114:	d109      	bne.n	800012a <__do_global_dtors_aux+0x1e>
 8000116:	f7ff ffd3 	bl	80000c0 <deregister_tm_clones>
 800011a:	4b05      	ldr	r3, [pc, #20]	; (8000130 <__do_global_dtors_aux+0x24>)
 800011c:	2b00      	cmp	r3, #0
 800011e:	d002      	beq.n	8000126 <__do_global_dtors_aux+0x1a>
 8000120:	4804      	ldr	r0, [pc, #16]	; (8000134 <__do_global_dtors_aux+0x28>)
 8000122:	e000      	b.n	8000126 <__do_global_dtors_aux+0x1a>
 8000124:	bf00      	nop
 8000126:	2301      	movs	r3, #1
 8000128:	7023      	strb	r3, [r4, #0]
 800012a:	bd10      	pop	{r4, pc}
 800012c:	20000430 	.word	0x20000430
 8000130:	00000000 	.word	0x00000000
 8000134:	080020d4 	.word	0x080020d4

08000138 <frame_dummy>:
 8000138:	b508      	push	{r3, lr}
 800013a:	4b09      	ldr	r3, [pc, #36]	; (8000160 <frame_dummy+0x28>)
 800013c:	2b00      	cmp	r3, #0
 800013e:	d003      	beq.n	8000148 <frame_dummy+0x10>
 8000140:	4808      	ldr	r0, [pc, #32]	; (8000164 <frame_dummy+0x2c>)
 8000142:	4909      	ldr	r1, [pc, #36]	; (8000168 <frame_dummy+0x30>)
 8000144:	e000      	b.n	8000148 <frame_dummy+0x10>
 8000146:	bf00      	nop
 8000148:	4808      	ldr	r0, [pc, #32]	; (800016c <frame_dummy+0x34>)
 800014a:	6803      	ldr	r3, [r0, #0]
 800014c:	2b00      	cmp	r3, #0
 800014e:	d102      	bne.n	8000156 <frame_dummy+0x1e>
 8000150:	f7ff ffc8 	bl	80000e4 <register_tm_clones>
 8000154:	bd08      	pop	{r3, pc}
 8000156:	4b06      	ldr	r3, [pc, #24]	; (8000170 <frame_dummy+0x38>)
 8000158:	2b00      	cmp	r3, #0
 800015a:	d0f9      	beq.n	8000150 <frame_dummy+0x18>
 800015c:	4798      	blx	r3
 800015e:	e7f7      	b.n	8000150 <frame_dummy+0x18>
 8000160:	00000000 	.word	0x00000000
 8000164:	080020d4 	.word	0x080020d4
 8000168:	20000434 	.word	0x20000434
 800016c:	20000430 	.word	0x20000430
 8000170:	00000000 	.word	0x00000000

08000174 <__aeabi_uidiv>:
 8000174:	2200      	movs	r2, #0
 8000176:	0843      	lsrs	r3, r0, #1
 8000178:	428b      	cmp	r3, r1
 800017a:	d374      	bcc.n	8000266 <__aeabi_uidiv+0xf2>
 800017c:	0903      	lsrs	r3, r0, #4
 800017e:	428b      	cmp	r3, r1
 8000180:	d35f      	bcc.n	8000242 <__aeabi_uidiv+0xce>
 8000182:	0a03      	lsrs	r3, r0, #8
 8000184:	428b      	cmp	r3, r1
 8000186:	d344      	bcc.n	8000212 <__aeabi_uidiv+0x9e>
 8000188:	0b03      	lsrs	r3, r0, #12
 800018a:	428b      	cmp	r3, r1
 800018c:	d328      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 800018e:	0c03      	lsrs	r3, r0, #16
 8000190:	428b      	cmp	r3, r1
 8000192:	d30d      	bcc.n	80001b0 <__aeabi_uidiv+0x3c>
 8000194:	22ff      	movs	r2, #255	; 0xff
 8000196:	0209      	lsls	r1, r1, #8
 8000198:	ba12      	rev	r2, r2
 800019a:	0c03      	lsrs	r3, r0, #16
 800019c:	428b      	cmp	r3, r1
 800019e:	d302      	bcc.n	80001a6 <__aeabi_uidiv+0x32>
 80001a0:	1212      	asrs	r2, r2, #8
 80001a2:	0209      	lsls	r1, r1, #8
 80001a4:	d065      	beq.n	8000272 <__aeabi_uidiv+0xfe>
 80001a6:	0b03      	lsrs	r3, r0, #12
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d319      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 80001ac:	e000      	b.n	80001b0 <__aeabi_uidiv+0x3c>
 80001ae:	0a09      	lsrs	r1, r1, #8
 80001b0:	0bc3      	lsrs	r3, r0, #15
 80001b2:	428b      	cmp	r3, r1
 80001b4:	d301      	bcc.n	80001ba <__aeabi_uidiv+0x46>
 80001b6:	03cb      	lsls	r3, r1, #15
 80001b8:	1ac0      	subs	r0, r0, r3
 80001ba:	4152      	adcs	r2, r2
 80001bc:	0b83      	lsrs	r3, r0, #14
 80001be:	428b      	cmp	r3, r1
 80001c0:	d301      	bcc.n	80001c6 <__aeabi_uidiv+0x52>
 80001c2:	038b      	lsls	r3, r1, #14
 80001c4:	1ac0      	subs	r0, r0, r3
 80001c6:	4152      	adcs	r2, r2
 80001c8:	0b43      	lsrs	r3, r0, #13
 80001ca:	428b      	cmp	r3, r1
 80001cc:	d301      	bcc.n	80001d2 <__aeabi_uidiv+0x5e>
 80001ce:	034b      	lsls	r3, r1, #13
 80001d0:	1ac0      	subs	r0, r0, r3
 80001d2:	4152      	adcs	r2, r2
 80001d4:	0b03      	lsrs	r3, r0, #12
 80001d6:	428b      	cmp	r3, r1
 80001d8:	d301      	bcc.n	80001de <__aeabi_uidiv+0x6a>
 80001da:	030b      	lsls	r3, r1, #12
 80001dc:	1ac0      	subs	r0, r0, r3
 80001de:	4152      	adcs	r2, r2
 80001e0:	0ac3      	lsrs	r3, r0, #11
 80001e2:	428b      	cmp	r3, r1
 80001e4:	d301      	bcc.n	80001ea <__aeabi_uidiv+0x76>
 80001e6:	02cb      	lsls	r3, r1, #11
 80001e8:	1ac0      	subs	r0, r0, r3
 80001ea:	4152      	adcs	r2, r2
 80001ec:	0a83      	lsrs	r3, r0, #10
 80001ee:	428b      	cmp	r3, r1
 80001f0:	d301      	bcc.n	80001f6 <__aeabi_uidiv+0x82>
 80001f2:	028b      	lsls	r3, r1, #10
 80001f4:	1ac0      	subs	r0, r0, r3
 80001f6:	4152      	adcs	r2, r2
 80001f8:	0a43      	lsrs	r3, r0, #9
 80001fa:	428b      	cmp	r3, r1
 80001fc:	d301      	bcc.n	8000202 <__aeabi_uidiv+0x8e>
 80001fe:	024b      	lsls	r3, r1, #9
 8000200:	1ac0      	subs	r0, r0, r3
 8000202:	4152      	adcs	r2, r2
 8000204:	0a03      	lsrs	r3, r0, #8
 8000206:	428b      	cmp	r3, r1
 8000208:	d301      	bcc.n	800020e <__aeabi_uidiv+0x9a>
 800020a:	020b      	lsls	r3, r1, #8
 800020c:	1ac0      	subs	r0, r0, r3
 800020e:	4152      	adcs	r2, r2
 8000210:	d2cd      	bcs.n	80001ae <__aeabi_uidiv+0x3a>
 8000212:	09c3      	lsrs	r3, r0, #7
 8000214:	428b      	cmp	r3, r1
 8000216:	d301      	bcc.n	800021c <__aeabi_uidiv+0xa8>
 8000218:	01cb      	lsls	r3, r1, #7
 800021a:	1ac0      	subs	r0, r0, r3
 800021c:	4152      	adcs	r2, r2
 800021e:	0983      	lsrs	r3, r0, #6
 8000220:	428b      	cmp	r3, r1
 8000222:	d301      	bcc.n	8000228 <__aeabi_uidiv+0xb4>
 8000224:	018b      	lsls	r3, r1, #6
 8000226:	1ac0      	subs	r0, r0, r3
 8000228:	4152      	adcs	r2, r2
 800022a:	0943      	lsrs	r3, r0, #5
 800022c:	428b      	cmp	r3, r1
 800022e:	d301      	bcc.n	8000234 <__aeabi_uidiv+0xc0>
 8000230:	014b      	lsls	r3, r1, #5
 8000232:	1ac0      	subs	r0, r0, r3
 8000234:	4152      	adcs	r2, r2
 8000236:	0903      	lsrs	r3, r0, #4
 8000238:	428b      	cmp	r3, r1
 800023a:	d301      	bcc.n	8000240 <__aeabi_uidiv+0xcc>
 800023c:	010b      	lsls	r3, r1, #4
 800023e:	1ac0      	subs	r0, r0, r3
 8000240:	4152      	adcs	r2, r2
 8000242:	08c3      	lsrs	r3, r0, #3
 8000244:	428b      	cmp	r3, r1
 8000246:	d301      	bcc.n	800024c <__aeabi_uidiv+0xd8>
 8000248:	00cb      	lsls	r3, r1, #3
 800024a:	1ac0      	subs	r0, r0, r3
 800024c:	4152      	adcs	r2, r2
 800024e:	0883      	lsrs	r3, r0, #2
 8000250:	428b      	cmp	r3, r1
 8000252:	d301      	bcc.n	8000258 <__aeabi_uidiv+0xe4>
 8000254:	008b      	lsls	r3, r1, #2
 8000256:	1ac0      	subs	r0, r0, r3
 8000258:	4152      	adcs	r2, r2
 800025a:	0843      	lsrs	r3, r0, #1
 800025c:	428b      	cmp	r3, r1
 800025e:	d301      	bcc.n	8000264 <__aeabi_uidiv+0xf0>
 8000260:	004b      	lsls	r3, r1, #1
 8000262:	1ac0      	subs	r0, r0, r3
 8000264:	4152      	adcs	r2, r2
 8000266:	1a41      	subs	r1, r0, r1
 8000268:	d200      	bcs.n	800026c <__aeabi_uidiv+0xf8>
 800026a:	4601      	mov	r1, r0
 800026c:	4152      	adcs	r2, r2
 800026e:	4610      	mov	r0, r2
 8000270:	4770      	bx	lr
 8000272:	e7ff      	b.n	8000274 <__aeabi_uidiv+0x100>
 8000274:	b501      	push	{r0, lr}
 8000276:	2000      	movs	r0, #0
 8000278:	f000 f80c 	bl	8000294 <__aeabi_idiv0>
 800027c:	bd02      	pop	{r1, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_uidivmod>:
 8000280:	2900      	cmp	r1, #0
 8000282:	d0f7      	beq.n	8000274 <__aeabi_uidiv+0x100>
 8000284:	b503      	push	{r0, r1, lr}
 8000286:	f7ff ff75 	bl	8000174 <__aeabi_uidiv>
 800028a:	bc0e      	pop	{r1, r2, r3}
 800028c:	4342      	muls	r2, r0
 800028e:	1a89      	subs	r1, r1, r2
 8000290:	4718      	bx	r3
 8000292:	46c0      	nop			; (mov r8, r8)

08000294 <__aeabi_idiv0>:
 8000294:	4770      	bx	lr
 8000296:	46c0      	nop			; (mov r8, r8)

08000298 <__aeabi_cdrcmple>:
 8000298:	4684      	mov	ip, r0
 800029a:	1c10      	adds	r0, r2, #0
 800029c:	4662      	mov	r2, ip
 800029e:	468c      	mov	ip, r1
 80002a0:	1c19      	adds	r1, r3, #0
 80002a2:	4663      	mov	r3, ip
 80002a4:	e000      	b.n	80002a8 <__aeabi_cdcmpeq>
 80002a6:	46c0      	nop			; (mov r8, r8)

080002a8 <__aeabi_cdcmpeq>:
 80002a8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80002aa:	f000 fc0b 	bl	8000ac4 <__ledf2>
 80002ae:	2800      	cmp	r0, #0
 80002b0:	d401      	bmi.n	80002b6 <__aeabi_cdcmpeq+0xe>
 80002b2:	2100      	movs	r1, #0
 80002b4:	42c8      	cmn	r0, r1
 80002b6:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

080002b8 <__aeabi_dcmpeq>:
 80002b8:	b510      	push	{r4, lr}
 80002ba:	f000 fb4f 	bl	800095c <__eqdf2>
 80002be:	4240      	negs	r0, r0
 80002c0:	3001      	adds	r0, #1
 80002c2:	bd10      	pop	{r4, pc}

080002c4 <__aeabi_dcmplt>:
 80002c4:	b510      	push	{r4, lr}
 80002c6:	f000 fbfd 	bl	8000ac4 <__ledf2>
 80002ca:	2800      	cmp	r0, #0
 80002cc:	db01      	blt.n	80002d2 <__aeabi_dcmplt+0xe>
 80002ce:	2000      	movs	r0, #0
 80002d0:	bd10      	pop	{r4, pc}
 80002d2:	2001      	movs	r0, #1
 80002d4:	bd10      	pop	{r4, pc}
 80002d6:	46c0      	nop			; (mov r8, r8)

080002d8 <__aeabi_dcmple>:
 80002d8:	b510      	push	{r4, lr}
 80002da:	f000 fbf3 	bl	8000ac4 <__ledf2>
 80002de:	2800      	cmp	r0, #0
 80002e0:	dd01      	ble.n	80002e6 <__aeabi_dcmple+0xe>
 80002e2:	2000      	movs	r0, #0
 80002e4:	bd10      	pop	{r4, pc}
 80002e6:	2001      	movs	r0, #1
 80002e8:	bd10      	pop	{r4, pc}
 80002ea:	46c0      	nop			; (mov r8, r8)

080002ec <__aeabi_dcmpgt>:
 80002ec:	b510      	push	{r4, lr}
 80002ee:	f000 fb79 	bl	80009e4 <__gedf2>
 80002f2:	2800      	cmp	r0, #0
 80002f4:	dc01      	bgt.n	80002fa <__aeabi_dcmpgt+0xe>
 80002f6:	2000      	movs	r0, #0
 80002f8:	bd10      	pop	{r4, pc}
 80002fa:	2001      	movs	r0, #1
 80002fc:	bd10      	pop	{r4, pc}
 80002fe:	46c0      	nop			; (mov r8, r8)

08000300 <__aeabi_dcmpge>:
 8000300:	b510      	push	{r4, lr}
 8000302:	f000 fb6f 	bl	80009e4 <__gedf2>
 8000306:	2800      	cmp	r0, #0
 8000308:	da01      	bge.n	800030e <__aeabi_dcmpge+0xe>
 800030a:	2000      	movs	r0, #0
 800030c:	bd10      	pop	{r4, pc}
 800030e:	2001      	movs	r0, #1
 8000310:	bd10      	pop	{r4, pc}
 8000312:	46c0      	nop			; (mov r8, r8)

08000314 <__aeabi_ddiv>:
 8000314:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000316:	465f      	mov	r7, fp
 8000318:	4656      	mov	r6, sl
 800031a:	464d      	mov	r5, r9
 800031c:	4644      	mov	r4, r8
 800031e:	b4f0      	push	{r4, r5, r6, r7}
 8000320:	030f      	lsls	r7, r1, #12
 8000322:	b087      	sub	sp, #28
 8000324:	4698      	mov	r8, r3
 8000326:	004d      	lsls	r5, r1, #1
 8000328:	0b3b      	lsrs	r3, r7, #12
 800032a:	0fcc      	lsrs	r4, r1, #31
 800032c:	1c06      	adds	r6, r0, #0
 800032e:	4692      	mov	sl, r2
 8000330:	4681      	mov	r9, r0
 8000332:	469b      	mov	fp, r3
 8000334:	0d6d      	lsrs	r5, r5, #21
 8000336:	9401      	str	r4, [sp, #4]
 8000338:	d06b      	beq.n	8000412 <__aeabi_ddiv+0xfe>
 800033a:	4b66      	ldr	r3, [pc, #408]	; (80004d4 <__aeabi_ddiv+0x1c0>)
 800033c:	429d      	cmp	r5, r3
 800033e:	d035      	beq.n	80003ac <__aeabi_ddiv+0x98>
 8000340:	2780      	movs	r7, #128	; 0x80
 8000342:	465b      	mov	r3, fp
 8000344:	037f      	lsls	r7, r7, #13
 8000346:	431f      	orrs	r7, r3
 8000348:	00f3      	lsls	r3, r6, #3
 800034a:	4699      	mov	r9, r3
 800034c:	4b62      	ldr	r3, [pc, #392]	; (80004d8 <__aeabi_ddiv+0x1c4>)
 800034e:	00ff      	lsls	r7, r7, #3
 8000350:	0f40      	lsrs	r0, r0, #29
 8000352:	469c      	mov	ip, r3
 8000354:	4307      	orrs	r7, r0
 8000356:	2300      	movs	r3, #0
 8000358:	46bb      	mov	fp, r7
 800035a:	2600      	movs	r6, #0
 800035c:	4465      	add	r5, ip
 800035e:	9300      	str	r3, [sp, #0]
 8000360:	4642      	mov	r2, r8
 8000362:	0317      	lsls	r7, r2, #12
 8000364:	0050      	lsls	r0, r2, #1
 8000366:	0fd2      	lsrs	r2, r2, #31
 8000368:	4653      	mov	r3, sl
 800036a:	0b3f      	lsrs	r7, r7, #12
 800036c:	0d40      	lsrs	r0, r0, #21
 800036e:	4690      	mov	r8, r2
 8000370:	d100      	bne.n	8000374 <__aeabi_ddiv+0x60>
 8000372:	e072      	b.n	800045a <__aeabi_ddiv+0x146>
 8000374:	4a57      	ldr	r2, [pc, #348]	; (80004d4 <__aeabi_ddiv+0x1c0>)
 8000376:	4290      	cmp	r0, r2
 8000378:	d067      	beq.n	800044a <__aeabi_ddiv+0x136>
 800037a:	2380      	movs	r3, #128	; 0x80
 800037c:	035b      	lsls	r3, r3, #13
 800037e:	431f      	orrs	r7, r3
 8000380:	4653      	mov	r3, sl
 8000382:	4a55      	ldr	r2, [pc, #340]	; (80004d8 <__aeabi_ddiv+0x1c4>)
 8000384:	0f5b      	lsrs	r3, r3, #29
 8000386:	00ff      	lsls	r7, r7, #3
 8000388:	431f      	orrs	r7, r3
 800038a:	4694      	mov	ip, r2
 800038c:	4653      	mov	r3, sl
 800038e:	2100      	movs	r1, #0
 8000390:	00db      	lsls	r3, r3, #3
 8000392:	4460      	add	r0, ip
 8000394:	4642      	mov	r2, r8
 8000396:	4062      	eors	r2, r4
 8000398:	4692      	mov	sl, r2
 800039a:	1a2d      	subs	r5, r5, r0
 800039c:	430e      	orrs	r6, r1
 800039e:	2e0f      	cmp	r6, #15
 80003a0:	d900      	bls.n	80003a4 <__aeabi_ddiv+0x90>
 80003a2:	e0a1      	b.n	80004e8 <__aeabi_ddiv+0x1d4>
 80003a4:	484d      	ldr	r0, [pc, #308]	; (80004dc <__aeabi_ddiv+0x1c8>)
 80003a6:	00b6      	lsls	r6, r6, #2
 80003a8:	5980      	ldr	r0, [r0, r6]
 80003aa:	4687      	mov	pc, r0
 80003ac:	465b      	mov	r3, fp
 80003ae:	431e      	orrs	r6, r3
 80003b0:	d000      	beq.n	80003b4 <__aeabi_ddiv+0xa0>
 80003b2:	e076      	b.n	80004a2 <__aeabi_ddiv+0x18e>
 80003b4:	2300      	movs	r3, #0
 80003b6:	469b      	mov	fp, r3
 80003b8:	4699      	mov	r9, r3
 80003ba:	3302      	adds	r3, #2
 80003bc:	2608      	movs	r6, #8
 80003be:	9300      	str	r3, [sp, #0]
 80003c0:	e7ce      	b.n	8000360 <__aeabi_ddiv+0x4c>
 80003c2:	4699      	mov	r9, r3
 80003c4:	4643      	mov	r3, r8
 80003c6:	46bb      	mov	fp, r7
 80003c8:	9301      	str	r3, [sp, #4]
 80003ca:	9100      	str	r1, [sp, #0]
 80003cc:	9b00      	ldr	r3, [sp, #0]
 80003ce:	2b02      	cmp	r3, #2
 80003d0:	d16b      	bne.n	80004aa <__aeabi_ddiv+0x196>
 80003d2:	9b01      	ldr	r3, [sp, #4]
 80003d4:	469a      	mov	sl, r3
 80003d6:	2100      	movs	r1, #0
 80003d8:	4653      	mov	r3, sl
 80003da:	2201      	movs	r2, #1
 80003dc:	2700      	movs	r7, #0
 80003de:	4689      	mov	r9, r1
 80003e0:	401a      	ands	r2, r3
 80003e2:	4b3c      	ldr	r3, [pc, #240]	; (80004d4 <__aeabi_ddiv+0x1c0>)
 80003e4:	2100      	movs	r1, #0
 80003e6:	033f      	lsls	r7, r7, #12
 80003e8:	0d0c      	lsrs	r4, r1, #20
 80003ea:	0524      	lsls	r4, r4, #20
 80003ec:	0b3f      	lsrs	r7, r7, #12
 80003ee:	4327      	orrs	r7, r4
 80003f0:	4c3b      	ldr	r4, [pc, #236]	; (80004e0 <__aeabi_ddiv+0x1cc>)
 80003f2:	051b      	lsls	r3, r3, #20
 80003f4:	4027      	ands	r7, r4
 80003f6:	431f      	orrs	r7, r3
 80003f8:	007f      	lsls	r7, r7, #1
 80003fa:	07d2      	lsls	r2, r2, #31
 80003fc:	087f      	lsrs	r7, r7, #1
 80003fe:	4317      	orrs	r7, r2
 8000400:	4648      	mov	r0, r9
 8000402:	1c39      	adds	r1, r7, #0
 8000404:	b007      	add	sp, #28
 8000406:	bc3c      	pop	{r2, r3, r4, r5}
 8000408:	4690      	mov	r8, r2
 800040a:	4699      	mov	r9, r3
 800040c:	46a2      	mov	sl, r4
 800040e:	46ab      	mov	fp, r5
 8000410:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000412:	4303      	orrs	r3, r0
 8000414:	d03e      	beq.n	8000494 <__aeabi_ddiv+0x180>
 8000416:	465b      	mov	r3, fp
 8000418:	2b00      	cmp	r3, #0
 800041a:	d100      	bne.n	800041e <__aeabi_ddiv+0x10a>
 800041c:	e19c      	b.n	8000758 <__aeabi_ddiv+0x444>
 800041e:	4658      	mov	r0, fp
 8000420:	f000 fbf2 	bl	8000c08 <__clzsi2>
 8000424:	2328      	movs	r3, #40	; 0x28
 8000426:	1c31      	adds	r1, r6, #0
 8000428:	1a1b      	subs	r3, r3, r0
 800042a:	1c02      	adds	r2, r0, #0
 800042c:	465f      	mov	r7, fp
 800042e:	40d9      	lsrs	r1, r3
 8000430:	3a08      	subs	r2, #8
 8000432:	4097      	lsls	r7, r2
 8000434:	1c0b      	adds	r3, r1, #0
 8000436:	4096      	lsls	r6, r2
 8000438:	433b      	orrs	r3, r7
 800043a:	469b      	mov	fp, r3
 800043c:	46b1      	mov	r9, r6
 800043e:	2300      	movs	r3, #0
 8000440:	4d28      	ldr	r5, [pc, #160]	; (80004e4 <__aeabi_ddiv+0x1d0>)
 8000442:	2600      	movs	r6, #0
 8000444:	1a2d      	subs	r5, r5, r0
 8000446:	9300      	str	r3, [sp, #0]
 8000448:	e78a      	b.n	8000360 <__aeabi_ddiv+0x4c>
 800044a:	4652      	mov	r2, sl
 800044c:	2103      	movs	r1, #3
 800044e:	433a      	orrs	r2, r7
 8000450:	d1a0      	bne.n	8000394 <__aeabi_ddiv+0x80>
 8000452:	2700      	movs	r7, #0
 8000454:	2300      	movs	r3, #0
 8000456:	2102      	movs	r1, #2
 8000458:	e79c      	b.n	8000394 <__aeabi_ddiv+0x80>
 800045a:	4652      	mov	r2, sl
 800045c:	433a      	orrs	r2, r7
 800045e:	d015      	beq.n	800048c <__aeabi_ddiv+0x178>
 8000460:	2f00      	cmp	r7, #0
 8000462:	d100      	bne.n	8000466 <__aeabi_ddiv+0x152>
 8000464:	e185      	b.n	8000772 <__aeabi_ddiv+0x45e>
 8000466:	1c38      	adds	r0, r7, #0
 8000468:	f000 fbce 	bl	8000c08 <__clzsi2>
 800046c:	1c02      	adds	r2, r0, #0
 800046e:	2128      	movs	r1, #40	; 0x28
 8000470:	4650      	mov	r0, sl
 8000472:	1a89      	subs	r1, r1, r2
 8000474:	1c13      	adds	r3, r2, #0
 8000476:	40c8      	lsrs	r0, r1
 8000478:	4651      	mov	r1, sl
 800047a:	3b08      	subs	r3, #8
 800047c:	4099      	lsls	r1, r3
 800047e:	409f      	lsls	r7, r3
 8000480:	1c0b      	adds	r3, r1, #0
 8000482:	4307      	orrs	r7, r0
 8000484:	4817      	ldr	r0, [pc, #92]	; (80004e4 <__aeabi_ddiv+0x1d0>)
 8000486:	2100      	movs	r1, #0
 8000488:	1a80      	subs	r0, r0, r2
 800048a:	e783      	b.n	8000394 <__aeabi_ddiv+0x80>
 800048c:	2700      	movs	r7, #0
 800048e:	2300      	movs	r3, #0
 8000490:	2101      	movs	r1, #1
 8000492:	e77f      	b.n	8000394 <__aeabi_ddiv+0x80>
 8000494:	2300      	movs	r3, #0
 8000496:	469b      	mov	fp, r3
 8000498:	4699      	mov	r9, r3
 800049a:	3301      	adds	r3, #1
 800049c:	2604      	movs	r6, #4
 800049e:	9300      	str	r3, [sp, #0]
 80004a0:	e75e      	b.n	8000360 <__aeabi_ddiv+0x4c>
 80004a2:	2303      	movs	r3, #3
 80004a4:	260c      	movs	r6, #12
 80004a6:	9300      	str	r3, [sp, #0]
 80004a8:	e75a      	b.n	8000360 <__aeabi_ddiv+0x4c>
 80004aa:	2b03      	cmp	r3, #3
 80004ac:	d100      	bne.n	80004b0 <__aeabi_ddiv+0x19c>
 80004ae:	e23c      	b.n	800092a <__aeabi_ddiv+0x616>
 80004b0:	2b01      	cmp	r3, #1
 80004b2:	d000      	beq.n	80004b6 <__aeabi_ddiv+0x1a2>
 80004b4:	e1bf      	b.n	8000836 <__aeabi_ddiv+0x522>
 80004b6:	1c1a      	adds	r2, r3, #0
 80004b8:	9b01      	ldr	r3, [sp, #4]
 80004ba:	401a      	ands	r2, r3
 80004bc:	2100      	movs	r1, #0
 80004be:	2300      	movs	r3, #0
 80004c0:	2700      	movs	r7, #0
 80004c2:	4689      	mov	r9, r1
 80004c4:	e78e      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 80004c6:	2300      	movs	r3, #0
 80004c8:	2780      	movs	r7, #128	; 0x80
 80004ca:	4699      	mov	r9, r3
 80004cc:	2200      	movs	r2, #0
 80004ce:	033f      	lsls	r7, r7, #12
 80004d0:	4b00      	ldr	r3, [pc, #0]	; (80004d4 <__aeabi_ddiv+0x1c0>)
 80004d2:	e787      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 80004d4:	000007ff 	.word	0x000007ff
 80004d8:	fffffc01 	.word	0xfffffc01
 80004dc:	080020ec 	.word	0x080020ec
 80004e0:	800fffff 	.word	0x800fffff
 80004e4:	fffffc0d 	.word	0xfffffc0d
 80004e8:	45bb      	cmp	fp, r7
 80004ea:	d900      	bls.n	80004ee <__aeabi_ddiv+0x1da>
 80004ec:	e151      	b.n	8000792 <__aeabi_ddiv+0x47e>
 80004ee:	d100      	bne.n	80004f2 <__aeabi_ddiv+0x1de>
 80004f0:	e14c      	b.n	800078c <__aeabi_ddiv+0x478>
 80004f2:	464a      	mov	r2, r9
 80004f4:	9203      	str	r2, [sp, #12]
 80004f6:	2200      	movs	r2, #0
 80004f8:	465c      	mov	r4, fp
 80004fa:	4690      	mov	r8, r2
 80004fc:	3d01      	subs	r5, #1
 80004fe:	0e18      	lsrs	r0, r3, #24
 8000500:	023f      	lsls	r7, r7, #8
 8000502:	4338      	orrs	r0, r7
 8000504:	021b      	lsls	r3, r3, #8
 8000506:	9301      	str	r3, [sp, #4]
 8000508:	0c03      	lsrs	r3, r0, #16
 800050a:	4699      	mov	r9, r3
 800050c:	0403      	lsls	r3, r0, #16
 800050e:	0c1b      	lsrs	r3, r3, #16
 8000510:	4649      	mov	r1, r9
 8000512:	1c06      	adds	r6, r0, #0
 8000514:	1c20      	adds	r0, r4, #0
 8000516:	1c1f      	adds	r7, r3, #0
 8000518:	9300      	str	r3, [sp, #0]
 800051a:	f7ff fe2b 	bl	8000174 <__aeabi_uidiv>
 800051e:	1c02      	adds	r2, r0, #0
 8000520:	437a      	muls	r2, r7
 8000522:	9002      	str	r0, [sp, #8]
 8000524:	4649      	mov	r1, r9
 8000526:	1c20      	adds	r0, r4, #0
 8000528:	1c17      	adds	r7, r2, #0
 800052a:	f7ff fea9 	bl	8000280 <__aeabi_uidivmod>
 800052e:	9b03      	ldr	r3, [sp, #12]
 8000530:	0409      	lsls	r1, r1, #16
 8000532:	0c1b      	lsrs	r3, r3, #16
 8000534:	4319      	orrs	r1, r3
 8000536:	428f      	cmp	r7, r1
 8000538:	d90c      	bls.n	8000554 <__aeabi_ddiv+0x240>
 800053a:	9b02      	ldr	r3, [sp, #8]
 800053c:	1989      	adds	r1, r1, r6
 800053e:	3b01      	subs	r3, #1
 8000540:	428e      	cmp	r6, r1
 8000542:	d900      	bls.n	8000546 <__aeabi_ddiv+0x232>
 8000544:	e152      	b.n	80007ec <__aeabi_ddiv+0x4d8>
 8000546:	428f      	cmp	r7, r1
 8000548:	d800      	bhi.n	800054c <__aeabi_ddiv+0x238>
 800054a:	e14f      	b.n	80007ec <__aeabi_ddiv+0x4d8>
 800054c:	9b02      	ldr	r3, [sp, #8]
 800054e:	1989      	adds	r1, r1, r6
 8000550:	3b02      	subs	r3, #2
 8000552:	9302      	str	r3, [sp, #8]
 8000554:	1bcc      	subs	r4, r1, r7
 8000556:	1c20      	adds	r0, r4, #0
 8000558:	4649      	mov	r1, r9
 800055a:	f7ff fe0b 	bl	8000174 <__aeabi_uidiv>
 800055e:	9f00      	ldr	r7, [sp, #0]
 8000560:	4683      	mov	fp, r0
 8000562:	4347      	muls	r7, r0
 8000564:	4649      	mov	r1, r9
 8000566:	1c20      	adds	r0, r4, #0
 8000568:	f7ff fe8a 	bl	8000280 <__aeabi_uidivmod>
 800056c:	9a03      	ldr	r2, [sp, #12]
 800056e:	040b      	lsls	r3, r1, #16
 8000570:	0414      	lsls	r4, r2, #16
 8000572:	0c24      	lsrs	r4, r4, #16
 8000574:	4323      	orrs	r3, r4
 8000576:	429f      	cmp	r7, r3
 8000578:	d90d      	bls.n	8000596 <__aeabi_ddiv+0x282>
 800057a:	465a      	mov	r2, fp
 800057c:	199b      	adds	r3, r3, r6
 800057e:	3a01      	subs	r2, #1
 8000580:	429e      	cmp	r6, r3
 8000582:	d900      	bls.n	8000586 <__aeabi_ddiv+0x272>
 8000584:	e130      	b.n	80007e8 <__aeabi_ddiv+0x4d4>
 8000586:	429f      	cmp	r7, r3
 8000588:	d800      	bhi.n	800058c <__aeabi_ddiv+0x278>
 800058a:	e12d      	b.n	80007e8 <__aeabi_ddiv+0x4d4>
 800058c:	2202      	movs	r2, #2
 800058e:	4252      	negs	r2, r2
 8000590:	4694      	mov	ip, r2
 8000592:	199b      	adds	r3, r3, r6
 8000594:	44e3      	add	fp, ip
 8000596:	9a02      	ldr	r2, [sp, #8]
 8000598:	1bdb      	subs	r3, r3, r7
 800059a:	0417      	lsls	r7, r2, #16
 800059c:	465a      	mov	r2, fp
 800059e:	433a      	orrs	r2, r7
 80005a0:	4693      	mov	fp, r2
 80005a2:	9c01      	ldr	r4, [sp, #4]
 80005a4:	0c17      	lsrs	r7, r2, #16
 80005a6:	0c22      	lsrs	r2, r4, #16
 80005a8:	1c10      	adds	r0, r2, #0
 80005aa:	9204      	str	r2, [sp, #16]
 80005ac:	465a      	mov	r2, fp
 80005ae:	0411      	lsls	r1, r2, #16
 80005b0:	0422      	lsls	r2, r4, #16
 80005b2:	0c12      	lsrs	r2, r2, #16
 80005b4:	1c14      	adds	r4, r2, #0
 80005b6:	0c09      	lsrs	r1, r1, #16
 80005b8:	437c      	muls	r4, r7
 80005ba:	9205      	str	r2, [sp, #20]
 80005bc:	434a      	muls	r2, r1
 80005be:	4341      	muls	r1, r0
 80005c0:	4347      	muls	r7, r0
 80005c2:	1861      	adds	r1, r4, r1
 80005c4:	0c10      	lsrs	r0, r2, #16
 80005c6:	1809      	adds	r1, r1, r0
 80005c8:	428c      	cmp	r4, r1
 80005ca:	d903      	bls.n	80005d4 <__aeabi_ddiv+0x2c0>
 80005cc:	2080      	movs	r0, #128	; 0x80
 80005ce:	0240      	lsls	r0, r0, #9
 80005d0:	4684      	mov	ip, r0
 80005d2:	4467      	add	r7, ip
 80005d4:	0c0c      	lsrs	r4, r1, #16
 80005d6:	0412      	lsls	r2, r2, #16
 80005d8:	0408      	lsls	r0, r1, #16
 80005da:	0c12      	lsrs	r2, r2, #16
 80005dc:	193c      	adds	r4, r7, r4
 80005de:	1881      	adds	r1, r0, r2
 80005e0:	42a3      	cmp	r3, r4
 80005e2:	d200      	bcs.n	80005e6 <__aeabi_ddiv+0x2d2>
 80005e4:	e0e5      	b.n	80007b2 <__aeabi_ddiv+0x49e>
 80005e6:	d100      	bne.n	80005ea <__aeabi_ddiv+0x2d6>
 80005e8:	e0df      	b.n	80007aa <__aeabi_ddiv+0x496>
 80005ea:	1b1f      	subs	r7, r3, r4
 80005ec:	4643      	mov	r3, r8
 80005ee:	1a5c      	subs	r4, r3, r1
 80005f0:	45a0      	cmp	r8, r4
 80005f2:	4192      	sbcs	r2, r2
 80005f4:	4252      	negs	r2, r2
 80005f6:	1abf      	subs	r7, r7, r2
 80005f8:	42b7      	cmp	r7, r6
 80005fa:	d100      	bne.n	80005fe <__aeabi_ddiv+0x2ea>
 80005fc:	e10e      	b.n	800081c <__aeabi_ddiv+0x508>
 80005fe:	1c38      	adds	r0, r7, #0
 8000600:	4649      	mov	r1, r9
 8000602:	f7ff fdb7 	bl	8000174 <__aeabi_uidiv>
 8000606:	9b00      	ldr	r3, [sp, #0]
 8000608:	9002      	str	r0, [sp, #8]
 800060a:	4343      	muls	r3, r0
 800060c:	4649      	mov	r1, r9
 800060e:	1c38      	adds	r0, r7, #0
 8000610:	4698      	mov	r8, r3
 8000612:	f7ff fe35 	bl	8000280 <__aeabi_uidivmod>
 8000616:	0c23      	lsrs	r3, r4, #16
 8000618:	040f      	lsls	r7, r1, #16
 800061a:	431f      	orrs	r7, r3
 800061c:	45b8      	cmp	r8, r7
 800061e:	d90c      	bls.n	800063a <__aeabi_ddiv+0x326>
 8000620:	9b02      	ldr	r3, [sp, #8]
 8000622:	19bf      	adds	r7, r7, r6
 8000624:	3b01      	subs	r3, #1
 8000626:	42be      	cmp	r6, r7
 8000628:	d900      	bls.n	800062c <__aeabi_ddiv+0x318>
 800062a:	e0fb      	b.n	8000824 <__aeabi_ddiv+0x510>
 800062c:	45b8      	cmp	r8, r7
 800062e:	d800      	bhi.n	8000632 <__aeabi_ddiv+0x31e>
 8000630:	e0f8      	b.n	8000824 <__aeabi_ddiv+0x510>
 8000632:	9b02      	ldr	r3, [sp, #8]
 8000634:	19bf      	adds	r7, r7, r6
 8000636:	3b02      	subs	r3, #2
 8000638:	9302      	str	r3, [sp, #8]
 800063a:	4643      	mov	r3, r8
 800063c:	1aff      	subs	r7, r7, r3
 800063e:	4649      	mov	r1, r9
 8000640:	1c38      	adds	r0, r7, #0
 8000642:	f7ff fd97 	bl	8000174 <__aeabi_uidiv>
 8000646:	9b00      	ldr	r3, [sp, #0]
 8000648:	9003      	str	r0, [sp, #12]
 800064a:	4343      	muls	r3, r0
 800064c:	4649      	mov	r1, r9
 800064e:	1c38      	adds	r0, r7, #0
 8000650:	4698      	mov	r8, r3
 8000652:	f7ff fe15 	bl	8000280 <__aeabi_uidivmod>
 8000656:	0424      	lsls	r4, r4, #16
 8000658:	0409      	lsls	r1, r1, #16
 800065a:	0c24      	lsrs	r4, r4, #16
 800065c:	4321      	orrs	r1, r4
 800065e:	4588      	cmp	r8, r1
 8000660:	d90c      	bls.n	800067c <__aeabi_ddiv+0x368>
 8000662:	9b03      	ldr	r3, [sp, #12]
 8000664:	1989      	adds	r1, r1, r6
 8000666:	3b01      	subs	r3, #1
 8000668:	428e      	cmp	r6, r1
 800066a:	d900      	bls.n	800066e <__aeabi_ddiv+0x35a>
 800066c:	e0dc      	b.n	8000828 <__aeabi_ddiv+0x514>
 800066e:	4588      	cmp	r8, r1
 8000670:	d800      	bhi.n	8000674 <__aeabi_ddiv+0x360>
 8000672:	e0d9      	b.n	8000828 <__aeabi_ddiv+0x514>
 8000674:	9b03      	ldr	r3, [sp, #12]
 8000676:	1989      	adds	r1, r1, r6
 8000678:	3b02      	subs	r3, #2
 800067a:	9303      	str	r3, [sp, #12]
 800067c:	4643      	mov	r3, r8
 800067e:	1ac9      	subs	r1, r1, r3
 8000680:	9b02      	ldr	r3, [sp, #8]
 8000682:	9a03      	ldr	r2, [sp, #12]
 8000684:	041b      	lsls	r3, r3, #16
 8000686:	9c05      	ldr	r4, [sp, #20]
 8000688:	431a      	orrs	r2, r3
 800068a:	0c10      	lsrs	r0, r2, #16
 800068c:	0413      	lsls	r3, r2, #16
 800068e:	4691      	mov	r9, r2
 8000690:	1c22      	adds	r2, r4, #0
 8000692:	9f04      	ldr	r7, [sp, #16]
 8000694:	0c1b      	lsrs	r3, r3, #16
 8000696:	435a      	muls	r2, r3
 8000698:	4344      	muls	r4, r0
 800069a:	437b      	muls	r3, r7
 800069c:	4378      	muls	r0, r7
 800069e:	18e3      	adds	r3, r4, r3
 80006a0:	0c17      	lsrs	r7, r2, #16
 80006a2:	19db      	adds	r3, r3, r7
 80006a4:	429c      	cmp	r4, r3
 80006a6:	d903      	bls.n	80006b0 <__aeabi_ddiv+0x39c>
 80006a8:	2480      	movs	r4, #128	; 0x80
 80006aa:	0264      	lsls	r4, r4, #9
 80006ac:	46a4      	mov	ip, r4
 80006ae:	4460      	add	r0, ip
 80006b0:	0c1c      	lsrs	r4, r3, #16
 80006b2:	0412      	lsls	r2, r2, #16
 80006b4:	041b      	lsls	r3, r3, #16
 80006b6:	0c12      	lsrs	r2, r2, #16
 80006b8:	1900      	adds	r0, r0, r4
 80006ba:	189b      	adds	r3, r3, r2
 80006bc:	4281      	cmp	r1, r0
 80006be:	d200      	bcs.n	80006c2 <__aeabi_ddiv+0x3ae>
 80006c0:	e096      	b.n	80007f0 <__aeabi_ddiv+0x4dc>
 80006c2:	d100      	bne.n	80006c6 <__aeabi_ddiv+0x3b2>
 80006c4:	e0fc      	b.n	80008c0 <__aeabi_ddiv+0x5ac>
 80006c6:	464a      	mov	r2, r9
 80006c8:	2301      	movs	r3, #1
 80006ca:	431a      	orrs	r2, r3
 80006cc:	4691      	mov	r9, r2
 80006ce:	4b9b      	ldr	r3, [pc, #620]	; (800093c <__aeabi_ddiv+0x628>)
 80006d0:	18eb      	adds	r3, r5, r3
 80006d2:	2b00      	cmp	r3, #0
 80006d4:	dc00      	bgt.n	80006d8 <__aeabi_ddiv+0x3c4>
 80006d6:	e099      	b.n	800080c <__aeabi_ddiv+0x4f8>
 80006d8:	464a      	mov	r2, r9
 80006da:	0752      	lsls	r2, r2, #29
 80006dc:	d00a      	beq.n	80006f4 <__aeabi_ddiv+0x3e0>
 80006de:	220f      	movs	r2, #15
 80006e0:	4649      	mov	r1, r9
 80006e2:	400a      	ands	r2, r1
 80006e4:	2a04      	cmp	r2, #4
 80006e6:	d005      	beq.n	80006f4 <__aeabi_ddiv+0x3e0>
 80006e8:	3104      	adds	r1, #4
 80006ea:	4549      	cmp	r1, r9
 80006ec:	4192      	sbcs	r2, r2
 80006ee:	4689      	mov	r9, r1
 80006f0:	4252      	negs	r2, r2
 80006f2:	4493      	add	fp, r2
 80006f4:	465a      	mov	r2, fp
 80006f6:	01d2      	lsls	r2, r2, #7
 80006f8:	d506      	bpl.n	8000708 <__aeabi_ddiv+0x3f4>
 80006fa:	465a      	mov	r2, fp
 80006fc:	4b90      	ldr	r3, [pc, #576]	; (8000940 <__aeabi_ddiv+0x62c>)
 80006fe:	401a      	ands	r2, r3
 8000700:	2380      	movs	r3, #128	; 0x80
 8000702:	4693      	mov	fp, r2
 8000704:	00db      	lsls	r3, r3, #3
 8000706:	18eb      	adds	r3, r5, r3
 8000708:	4a8e      	ldr	r2, [pc, #568]	; (8000944 <__aeabi_ddiv+0x630>)
 800070a:	4293      	cmp	r3, r2
 800070c:	dd00      	ble.n	8000710 <__aeabi_ddiv+0x3fc>
 800070e:	e662      	b.n	80003d6 <__aeabi_ddiv+0xc2>
 8000710:	464a      	mov	r2, r9
 8000712:	4659      	mov	r1, fp
 8000714:	08d2      	lsrs	r2, r2, #3
 8000716:	0749      	lsls	r1, r1, #29
 8000718:	4311      	orrs	r1, r2
 800071a:	465a      	mov	r2, fp
 800071c:	4689      	mov	r9, r1
 800071e:	0257      	lsls	r7, r2, #9
 8000720:	4651      	mov	r1, sl
 8000722:	2201      	movs	r2, #1
 8000724:	055b      	lsls	r3, r3, #21
 8000726:	0b3f      	lsrs	r7, r7, #12
 8000728:	0d5b      	lsrs	r3, r3, #21
 800072a:	400a      	ands	r2, r1
 800072c:	e65a      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 800072e:	2080      	movs	r0, #128	; 0x80
 8000730:	465a      	mov	r2, fp
 8000732:	0300      	lsls	r0, r0, #12
 8000734:	4202      	tst	r2, r0
 8000736:	d008      	beq.n	800074a <__aeabi_ddiv+0x436>
 8000738:	4207      	tst	r7, r0
 800073a:	d106      	bne.n	800074a <__aeabi_ddiv+0x436>
 800073c:	4307      	orrs	r7, r0
 800073e:	033f      	lsls	r7, r7, #12
 8000740:	4699      	mov	r9, r3
 8000742:	0b3f      	lsrs	r7, r7, #12
 8000744:	4642      	mov	r2, r8
 8000746:	4b80      	ldr	r3, [pc, #512]	; (8000948 <__aeabi_ddiv+0x634>)
 8000748:	e64c      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 800074a:	465f      	mov	r7, fp
 800074c:	4307      	orrs	r7, r0
 800074e:	033f      	lsls	r7, r7, #12
 8000750:	0b3f      	lsrs	r7, r7, #12
 8000752:	1c22      	adds	r2, r4, #0
 8000754:	4b7c      	ldr	r3, [pc, #496]	; (8000948 <__aeabi_ddiv+0x634>)
 8000756:	e645      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 8000758:	f000 fa56 	bl	8000c08 <__clzsi2>
 800075c:	1c03      	adds	r3, r0, #0
 800075e:	3020      	adds	r0, #32
 8000760:	2827      	cmp	r0, #39	; 0x27
 8000762:	dc00      	bgt.n	8000766 <__aeabi_ddiv+0x452>
 8000764:	e65e      	b.n	8000424 <__aeabi_ddiv+0x110>
 8000766:	3b08      	subs	r3, #8
 8000768:	409e      	lsls	r6, r3
 800076a:	2300      	movs	r3, #0
 800076c:	46b3      	mov	fp, r6
 800076e:	4699      	mov	r9, r3
 8000770:	e665      	b.n	800043e <__aeabi_ddiv+0x12a>
 8000772:	4650      	mov	r0, sl
 8000774:	f000 fa48 	bl	8000c08 <__clzsi2>
 8000778:	1c02      	adds	r2, r0, #0
 800077a:	3220      	adds	r2, #32
 800077c:	2a27      	cmp	r2, #39	; 0x27
 800077e:	dc00      	bgt.n	8000782 <__aeabi_ddiv+0x46e>
 8000780:	e675      	b.n	800046e <__aeabi_ddiv+0x15a>
 8000782:	4657      	mov	r7, sl
 8000784:	3808      	subs	r0, #8
 8000786:	4087      	lsls	r7, r0
 8000788:	2300      	movs	r3, #0
 800078a:	e67b      	b.n	8000484 <__aeabi_ddiv+0x170>
 800078c:	4599      	cmp	r9, r3
 800078e:	d200      	bcs.n	8000792 <__aeabi_ddiv+0x47e>
 8000790:	e6af      	b.n	80004f2 <__aeabi_ddiv+0x1de>
 8000792:	465a      	mov	r2, fp
 8000794:	4659      	mov	r1, fp
 8000796:	0854      	lsrs	r4, r2, #1
 8000798:	464a      	mov	r2, r9
 800079a:	07c8      	lsls	r0, r1, #31
 800079c:	0852      	lsrs	r2, r2, #1
 800079e:	4302      	orrs	r2, r0
 80007a0:	9203      	str	r2, [sp, #12]
 80007a2:	464a      	mov	r2, r9
 80007a4:	07d2      	lsls	r2, r2, #31
 80007a6:	4690      	mov	r8, r2
 80007a8:	e6a9      	b.n	80004fe <__aeabi_ddiv+0x1ea>
 80007aa:	2700      	movs	r7, #0
 80007ac:	4588      	cmp	r8, r1
 80007ae:	d300      	bcc.n	80007b2 <__aeabi_ddiv+0x49e>
 80007b0:	e71c      	b.n	80005ec <__aeabi_ddiv+0x2d8>
 80007b2:	9f01      	ldr	r7, [sp, #4]
 80007b4:	465a      	mov	r2, fp
 80007b6:	46bc      	mov	ip, r7
 80007b8:	44e0      	add	r8, ip
 80007ba:	45b8      	cmp	r8, r7
 80007bc:	41bf      	sbcs	r7, r7
 80007be:	427f      	negs	r7, r7
 80007c0:	19bf      	adds	r7, r7, r6
 80007c2:	18ff      	adds	r7, r7, r3
 80007c4:	3a01      	subs	r2, #1
 80007c6:	42be      	cmp	r6, r7
 80007c8:	d206      	bcs.n	80007d8 <__aeabi_ddiv+0x4c4>
 80007ca:	42bc      	cmp	r4, r7
 80007cc:	d85f      	bhi.n	800088e <__aeabi_ddiv+0x57a>
 80007ce:	d100      	bne.n	80007d2 <__aeabi_ddiv+0x4be>
 80007d0:	e09f      	b.n	8000912 <__aeabi_ddiv+0x5fe>
 80007d2:	1b3f      	subs	r7, r7, r4
 80007d4:	4693      	mov	fp, r2
 80007d6:	e709      	b.n	80005ec <__aeabi_ddiv+0x2d8>
 80007d8:	42b7      	cmp	r7, r6
 80007da:	d1fa      	bne.n	80007d2 <__aeabi_ddiv+0x4be>
 80007dc:	9b01      	ldr	r3, [sp, #4]
 80007de:	4543      	cmp	r3, r8
 80007e0:	d9f3      	bls.n	80007ca <__aeabi_ddiv+0x4b6>
 80007e2:	1b37      	subs	r7, r6, r4
 80007e4:	4693      	mov	fp, r2
 80007e6:	e701      	b.n	80005ec <__aeabi_ddiv+0x2d8>
 80007e8:	4693      	mov	fp, r2
 80007ea:	e6d4      	b.n	8000596 <__aeabi_ddiv+0x282>
 80007ec:	9302      	str	r3, [sp, #8]
 80007ee:	e6b1      	b.n	8000554 <__aeabi_ddiv+0x240>
 80007f0:	464a      	mov	r2, r9
 80007f2:	1989      	adds	r1, r1, r6
 80007f4:	3a01      	subs	r2, #1
 80007f6:	428e      	cmp	r6, r1
 80007f8:	d918      	bls.n	800082c <__aeabi_ddiv+0x518>
 80007fa:	4691      	mov	r9, r2
 80007fc:	4281      	cmp	r1, r0
 80007fe:	d000      	beq.n	8000802 <__aeabi_ddiv+0x4ee>
 8000800:	e761      	b.n	80006c6 <__aeabi_ddiv+0x3b2>
 8000802:	9a01      	ldr	r2, [sp, #4]
 8000804:	429a      	cmp	r2, r3
 8000806:	d000      	beq.n	800080a <__aeabi_ddiv+0x4f6>
 8000808:	e75d      	b.n	80006c6 <__aeabi_ddiv+0x3b2>
 800080a:	e760      	b.n	80006ce <__aeabi_ddiv+0x3ba>
 800080c:	4f4f      	ldr	r7, [pc, #316]	; (800094c <__aeabi_ddiv+0x638>)
 800080e:	1b7f      	subs	r7, r7, r5
 8000810:	2f38      	cmp	r7, #56	; 0x38
 8000812:	dd13      	ble.n	800083c <__aeabi_ddiv+0x528>
 8000814:	2201      	movs	r2, #1
 8000816:	4653      	mov	r3, sl
 8000818:	401a      	ands	r2, r3
 800081a:	e64f      	b.n	80004bc <__aeabi_ddiv+0x1a8>
 800081c:	2301      	movs	r3, #1
 800081e:	425b      	negs	r3, r3
 8000820:	4699      	mov	r9, r3
 8000822:	e754      	b.n	80006ce <__aeabi_ddiv+0x3ba>
 8000824:	9302      	str	r3, [sp, #8]
 8000826:	e708      	b.n	800063a <__aeabi_ddiv+0x326>
 8000828:	9303      	str	r3, [sp, #12]
 800082a:	e727      	b.n	800067c <__aeabi_ddiv+0x368>
 800082c:	4288      	cmp	r0, r1
 800082e:	d83c      	bhi.n	80008aa <__aeabi_ddiv+0x596>
 8000830:	d074      	beq.n	800091c <__aeabi_ddiv+0x608>
 8000832:	4691      	mov	r9, r2
 8000834:	e747      	b.n	80006c6 <__aeabi_ddiv+0x3b2>
 8000836:	9b01      	ldr	r3, [sp, #4]
 8000838:	469a      	mov	sl, r3
 800083a:	e748      	b.n	80006ce <__aeabi_ddiv+0x3ba>
 800083c:	2f1f      	cmp	r7, #31
 800083e:	dc44      	bgt.n	80008ca <__aeabi_ddiv+0x5b6>
 8000840:	4b43      	ldr	r3, [pc, #268]	; (8000950 <__aeabi_ddiv+0x63c>)
 8000842:	464a      	mov	r2, r9
 8000844:	469c      	mov	ip, r3
 8000846:	465b      	mov	r3, fp
 8000848:	4465      	add	r5, ip
 800084a:	40fa      	lsrs	r2, r7
 800084c:	40ab      	lsls	r3, r5
 800084e:	4313      	orrs	r3, r2
 8000850:	464a      	mov	r2, r9
 8000852:	40aa      	lsls	r2, r5
 8000854:	1c15      	adds	r5, r2, #0
 8000856:	1e6a      	subs	r2, r5, #1
 8000858:	4195      	sbcs	r5, r2
 800085a:	465a      	mov	r2, fp
 800085c:	40fa      	lsrs	r2, r7
 800085e:	432b      	orrs	r3, r5
 8000860:	1c17      	adds	r7, r2, #0
 8000862:	075a      	lsls	r2, r3, #29
 8000864:	d009      	beq.n	800087a <__aeabi_ddiv+0x566>
 8000866:	220f      	movs	r2, #15
 8000868:	401a      	ands	r2, r3
 800086a:	2a04      	cmp	r2, #4
 800086c:	d005      	beq.n	800087a <__aeabi_ddiv+0x566>
 800086e:	1d1a      	adds	r2, r3, #4
 8000870:	429a      	cmp	r2, r3
 8000872:	419b      	sbcs	r3, r3
 8000874:	425b      	negs	r3, r3
 8000876:	18ff      	adds	r7, r7, r3
 8000878:	1c13      	adds	r3, r2, #0
 800087a:	023a      	lsls	r2, r7, #8
 800087c:	d53e      	bpl.n	80008fc <__aeabi_ddiv+0x5e8>
 800087e:	4653      	mov	r3, sl
 8000880:	2201      	movs	r2, #1
 8000882:	2100      	movs	r1, #0
 8000884:	401a      	ands	r2, r3
 8000886:	2700      	movs	r7, #0
 8000888:	2301      	movs	r3, #1
 800088a:	4689      	mov	r9, r1
 800088c:	e5aa      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 800088e:	2302      	movs	r3, #2
 8000890:	425b      	negs	r3, r3
 8000892:	469c      	mov	ip, r3
 8000894:	9a01      	ldr	r2, [sp, #4]
 8000896:	44e3      	add	fp, ip
 8000898:	4694      	mov	ip, r2
 800089a:	44e0      	add	r8, ip
 800089c:	4590      	cmp	r8, r2
 800089e:	419b      	sbcs	r3, r3
 80008a0:	425b      	negs	r3, r3
 80008a2:	199b      	adds	r3, r3, r6
 80008a4:	19df      	adds	r7, r3, r7
 80008a6:	1b3f      	subs	r7, r7, r4
 80008a8:	e6a0      	b.n	80005ec <__aeabi_ddiv+0x2d8>
 80008aa:	9f01      	ldr	r7, [sp, #4]
 80008ac:	464a      	mov	r2, r9
 80008ae:	007c      	lsls	r4, r7, #1
 80008b0:	42bc      	cmp	r4, r7
 80008b2:	41bf      	sbcs	r7, r7
 80008b4:	427f      	negs	r7, r7
 80008b6:	19bf      	adds	r7, r7, r6
 80008b8:	3a02      	subs	r2, #2
 80008ba:	19c9      	adds	r1, r1, r7
 80008bc:	9401      	str	r4, [sp, #4]
 80008be:	e79c      	b.n	80007fa <__aeabi_ddiv+0x4e6>
 80008c0:	2b00      	cmp	r3, #0
 80008c2:	d195      	bne.n	80007f0 <__aeabi_ddiv+0x4dc>
 80008c4:	2200      	movs	r2, #0
 80008c6:	9201      	str	r2, [sp, #4]
 80008c8:	e79b      	b.n	8000802 <__aeabi_ddiv+0x4ee>
 80008ca:	465a      	mov	r2, fp
 80008cc:	4b21      	ldr	r3, [pc, #132]	; (8000954 <__aeabi_ddiv+0x640>)
 80008ce:	1b5b      	subs	r3, r3, r5
 80008d0:	40da      	lsrs	r2, r3
 80008d2:	2f20      	cmp	r7, #32
 80008d4:	d027      	beq.n	8000926 <__aeabi_ddiv+0x612>
 80008d6:	4b20      	ldr	r3, [pc, #128]	; (8000958 <__aeabi_ddiv+0x644>)
 80008d8:	469c      	mov	ip, r3
 80008da:	465b      	mov	r3, fp
 80008dc:	4465      	add	r5, ip
 80008de:	40ab      	lsls	r3, r5
 80008e0:	4649      	mov	r1, r9
 80008e2:	430b      	orrs	r3, r1
 80008e4:	1e59      	subs	r1, r3, #1
 80008e6:	418b      	sbcs	r3, r1
 80008e8:	4313      	orrs	r3, r2
 80008ea:	2207      	movs	r2, #7
 80008ec:	2700      	movs	r7, #0
 80008ee:	401a      	ands	r2, r3
 80008f0:	d007      	beq.n	8000902 <__aeabi_ddiv+0x5ee>
 80008f2:	220f      	movs	r2, #15
 80008f4:	2700      	movs	r7, #0
 80008f6:	401a      	ands	r2, r3
 80008f8:	2a04      	cmp	r2, #4
 80008fa:	d1b8      	bne.n	800086e <__aeabi_ddiv+0x55a>
 80008fc:	077a      	lsls	r2, r7, #29
 80008fe:	027f      	lsls	r7, r7, #9
 8000900:	0b3f      	lsrs	r7, r7, #12
 8000902:	08db      	lsrs	r3, r3, #3
 8000904:	4313      	orrs	r3, r2
 8000906:	4699      	mov	r9, r3
 8000908:	2201      	movs	r2, #1
 800090a:	4653      	mov	r3, sl
 800090c:	401a      	ands	r2, r3
 800090e:	2300      	movs	r3, #0
 8000910:	e568      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 8000912:	4541      	cmp	r1, r8
 8000914:	d8bb      	bhi.n	800088e <__aeabi_ddiv+0x57a>
 8000916:	4693      	mov	fp, r2
 8000918:	2700      	movs	r7, #0
 800091a:	e667      	b.n	80005ec <__aeabi_ddiv+0x2d8>
 800091c:	9c01      	ldr	r4, [sp, #4]
 800091e:	429c      	cmp	r4, r3
 8000920:	d3c3      	bcc.n	80008aa <__aeabi_ddiv+0x596>
 8000922:	4691      	mov	r9, r2
 8000924:	e76d      	b.n	8000802 <__aeabi_ddiv+0x4ee>
 8000926:	2300      	movs	r3, #0
 8000928:	e7da      	b.n	80008e0 <__aeabi_ddiv+0x5cc>
 800092a:	2780      	movs	r7, #128	; 0x80
 800092c:	465b      	mov	r3, fp
 800092e:	033f      	lsls	r7, r7, #12
 8000930:	431f      	orrs	r7, r3
 8000932:	033f      	lsls	r7, r7, #12
 8000934:	0b3f      	lsrs	r7, r7, #12
 8000936:	9a01      	ldr	r2, [sp, #4]
 8000938:	4b03      	ldr	r3, [pc, #12]	; (8000948 <__aeabi_ddiv+0x634>)
 800093a:	e553      	b.n	80003e4 <__aeabi_ddiv+0xd0>
 800093c:	000003ff 	.word	0x000003ff
 8000940:	feffffff 	.word	0xfeffffff
 8000944:	000007fe 	.word	0x000007fe
 8000948:	000007ff 	.word	0x000007ff
 800094c:	fffffc02 	.word	0xfffffc02
 8000950:	0000041e 	.word	0x0000041e
 8000954:	fffffbe2 	.word	0xfffffbe2
 8000958:	0000043e 	.word	0x0000043e

0800095c <__eqdf2>:
 800095c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800095e:	465f      	mov	r7, fp
 8000960:	464d      	mov	r5, r9
 8000962:	4644      	mov	r4, r8
 8000964:	4656      	mov	r6, sl
 8000966:	b4f0      	push	{r4, r5, r6, r7}
 8000968:	031f      	lsls	r7, r3, #12
 800096a:	005c      	lsls	r4, r3, #1
 800096c:	0fdb      	lsrs	r3, r3, #31
 800096e:	4699      	mov	r9, r3
 8000970:	4b1b      	ldr	r3, [pc, #108]	; (80009e0 <__eqdf2+0x84>)
 8000972:	030e      	lsls	r6, r1, #12
 8000974:	004d      	lsls	r5, r1, #1
 8000976:	0fc9      	lsrs	r1, r1, #31
 8000978:	4684      	mov	ip, r0
 800097a:	0b36      	lsrs	r6, r6, #12
 800097c:	0d6d      	lsrs	r5, r5, #21
 800097e:	468b      	mov	fp, r1
 8000980:	4690      	mov	r8, r2
 8000982:	0b3f      	lsrs	r7, r7, #12
 8000984:	0d64      	lsrs	r4, r4, #21
 8000986:	429d      	cmp	r5, r3
 8000988:	d00c      	beq.n	80009a4 <__eqdf2+0x48>
 800098a:	4b15      	ldr	r3, [pc, #84]	; (80009e0 <__eqdf2+0x84>)
 800098c:	429c      	cmp	r4, r3
 800098e:	d010      	beq.n	80009b2 <__eqdf2+0x56>
 8000990:	2301      	movs	r3, #1
 8000992:	42a5      	cmp	r5, r4
 8000994:	d014      	beq.n	80009c0 <__eqdf2+0x64>
 8000996:	1c18      	adds	r0, r3, #0
 8000998:	bc3c      	pop	{r2, r3, r4, r5}
 800099a:	4690      	mov	r8, r2
 800099c:	4699      	mov	r9, r3
 800099e:	46a2      	mov	sl, r4
 80009a0:	46ab      	mov	fp, r5
 80009a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80009a4:	1c31      	adds	r1, r6, #0
 80009a6:	2301      	movs	r3, #1
 80009a8:	4301      	orrs	r1, r0
 80009aa:	d1f4      	bne.n	8000996 <__eqdf2+0x3a>
 80009ac:	4b0c      	ldr	r3, [pc, #48]	; (80009e0 <__eqdf2+0x84>)
 80009ae:	429c      	cmp	r4, r3
 80009b0:	d1ee      	bne.n	8000990 <__eqdf2+0x34>
 80009b2:	433a      	orrs	r2, r7
 80009b4:	2301      	movs	r3, #1
 80009b6:	2a00      	cmp	r2, #0
 80009b8:	d1ed      	bne.n	8000996 <__eqdf2+0x3a>
 80009ba:	2301      	movs	r3, #1
 80009bc:	42a5      	cmp	r5, r4
 80009be:	d1ea      	bne.n	8000996 <__eqdf2+0x3a>
 80009c0:	42be      	cmp	r6, r7
 80009c2:	d1e8      	bne.n	8000996 <__eqdf2+0x3a>
 80009c4:	45c4      	cmp	ip, r8
 80009c6:	d1e6      	bne.n	8000996 <__eqdf2+0x3a>
 80009c8:	45cb      	cmp	fp, r9
 80009ca:	d006      	beq.n	80009da <__eqdf2+0x7e>
 80009cc:	2d00      	cmp	r5, #0
 80009ce:	d1e2      	bne.n	8000996 <__eqdf2+0x3a>
 80009d0:	4330      	orrs	r0, r6
 80009d2:	1c03      	adds	r3, r0, #0
 80009d4:	1e58      	subs	r0, r3, #1
 80009d6:	4183      	sbcs	r3, r0
 80009d8:	e7dd      	b.n	8000996 <__eqdf2+0x3a>
 80009da:	2300      	movs	r3, #0
 80009dc:	e7db      	b.n	8000996 <__eqdf2+0x3a>
 80009de:	46c0      	nop			; (mov r8, r8)
 80009e0:	000007ff 	.word	0x000007ff

080009e4 <__gedf2>:
 80009e4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80009e6:	4657      	mov	r7, sl
 80009e8:	4645      	mov	r5, r8
 80009ea:	464e      	mov	r6, r9
 80009ec:	b4e0      	push	{r5, r6, r7}
 80009ee:	030f      	lsls	r7, r1, #12
 80009f0:	004e      	lsls	r6, r1, #1
 80009f2:	0fc9      	lsrs	r1, r1, #31
 80009f4:	468a      	mov	sl, r1
 80009f6:	4932      	ldr	r1, [pc, #200]	; (8000ac0 <__gedf2+0xdc>)
 80009f8:	031d      	lsls	r5, r3, #12
 80009fa:	005c      	lsls	r4, r3, #1
 80009fc:	4684      	mov	ip, r0
 80009fe:	0b3f      	lsrs	r7, r7, #12
 8000a00:	0d76      	lsrs	r6, r6, #21
 8000a02:	4690      	mov	r8, r2
 8000a04:	0b2d      	lsrs	r5, r5, #12
 8000a06:	0d64      	lsrs	r4, r4, #21
 8000a08:	0fdb      	lsrs	r3, r3, #31
 8000a0a:	428e      	cmp	r6, r1
 8000a0c:	d00f      	beq.n	8000a2e <__gedf2+0x4a>
 8000a0e:	428c      	cmp	r4, r1
 8000a10:	d039      	beq.n	8000a86 <__gedf2+0xa2>
 8000a12:	2e00      	cmp	r6, #0
 8000a14:	d110      	bne.n	8000a38 <__gedf2+0x54>
 8000a16:	4338      	orrs	r0, r7
 8000a18:	4241      	negs	r1, r0
 8000a1a:	4141      	adcs	r1, r0
 8000a1c:	4689      	mov	r9, r1
 8000a1e:	2c00      	cmp	r4, #0
 8000a20:	d127      	bne.n	8000a72 <__gedf2+0x8e>
 8000a22:	432a      	orrs	r2, r5
 8000a24:	d125      	bne.n	8000a72 <__gedf2+0x8e>
 8000a26:	2000      	movs	r0, #0
 8000a28:	2900      	cmp	r1, #0
 8000a2a:	d10e      	bne.n	8000a4a <__gedf2+0x66>
 8000a2c:	e008      	b.n	8000a40 <__gedf2+0x5c>
 8000a2e:	1c39      	adds	r1, r7, #0
 8000a30:	4301      	orrs	r1, r0
 8000a32:	d12e      	bne.n	8000a92 <__gedf2+0xae>
 8000a34:	42b4      	cmp	r4, r6
 8000a36:	d026      	beq.n	8000a86 <__gedf2+0xa2>
 8000a38:	2c00      	cmp	r4, #0
 8000a3a:	d00b      	beq.n	8000a54 <__gedf2+0x70>
 8000a3c:	459a      	cmp	sl, r3
 8000a3e:	d00d      	beq.n	8000a5c <__gedf2+0x78>
 8000a40:	4653      	mov	r3, sl
 8000a42:	4259      	negs	r1, r3
 8000a44:	2301      	movs	r3, #1
 8000a46:	4319      	orrs	r1, r3
 8000a48:	1c08      	adds	r0, r1, #0
 8000a4a:	bc1c      	pop	{r2, r3, r4}
 8000a4c:	4690      	mov	r8, r2
 8000a4e:	4699      	mov	r9, r3
 8000a50:	46a2      	mov	sl, r4
 8000a52:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a54:	432a      	orrs	r2, r5
 8000a56:	d0f3      	beq.n	8000a40 <__gedf2+0x5c>
 8000a58:	459a      	cmp	sl, r3
 8000a5a:	d1f1      	bne.n	8000a40 <__gedf2+0x5c>
 8000a5c:	42a6      	cmp	r6, r4
 8000a5e:	dcef      	bgt.n	8000a40 <__gedf2+0x5c>
 8000a60:	da1a      	bge.n	8000a98 <__gedf2+0xb4>
 8000a62:	4650      	mov	r0, sl
 8000a64:	4241      	negs	r1, r0
 8000a66:	4148      	adcs	r0, r1
 8000a68:	2301      	movs	r3, #1
 8000a6a:	4241      	negs	r1, r0
 8000a6c:	4319      	orrs	r1, r3
 8000a6e:	1c08      	adds	r0, r1, #0
 8000a70:	e7eb      	b.n	8000a4a <__gedf2+0x66>
 8000a72:	464a      	mov	r2, r9
 8000a74:	2a00      	cmp	r2, #0
 8000a76:	d0e1      	beq.n	8000a3c <__gedf2+0x58>
 8000a78:	4258      	negs	r0, r3
 8000a7a:	4158      	adcs	r0, r3
 8000a7c:	2201      	movs	r2, #1
 8000a7e:	4241      	negs	r1, r0
 8000a80:	4311      	orrs	r1, r2
 8000a82:	1c08      	adds	r0, r1, #0
 8000a84:	e7e1      	b.n	8000a4a <__gedf2+0x66>
 8000a86:	1c29      	adds	r1, r5, #0
 8000a88:	4311      	orrs	r1, r2
 8000a8a:	d102      	bne.n	8000a92 <__gedf2+0xae>
 8000a8c:	2e00      	cmp	r6, #0
 8000a8e:	d0c2      	beq.n	8000a16 <__gedf2+0x32>
 8000a90:	e7d4      	b.n	8000a3c <__gedf2+0x58>
 8000a92:	2002      	movs	r0, #2
 8000a94:	4240      	negs	r0, r0
 8000a96:	e7d8      	b.n	8000a4a <__gedf2+0x66>
 8000a98:	42af      	cmp	r7, r5
 8000a9a:	d8d1      	bhi.n	8000a40 <__gedf2+0x5c>
 8000a9c:	d009      	beq.n	8000ab2 <__gedf2+0xce>
 8000a9e:	2000      	movs	r0, #0
 8000aa0:	42af      	cmp	r7, r5
 8000aa2:	d2d2      	bcs.n	8000a4a <__gedf2+0x66>
 8000aa4:	4650      	mov	r0, sl
 8000aa6:	4241      	negs	r1, r0
 8000aa8:	4148      	adcs	r0, r1
 8000aaa:	2301      	movs	r3, #1
 8000aac:	4240      	negs	r0, r0
 8000aae:	4318      	orrs	r0, r3
 8000ab0:	e7cb      	b.n	8000a4a <__gedf2+0x66>
 8000ab2:	45c4      	cmp	ip, r8
 8000ab4:	d8c4      	bhi.n	8000a40 <__gedf2+0x5c>
 8000ab6:	2000      	movs	r0, #0
 8000ab8:	45c4      	cmp	ip, r8
 8000aba:	d3f3      	bcc.n	8000aa4 <__gedf2+0xc0>
 8000abc:	e7c5      	b.n	8000a4a <__gedf2+0x66>
 8000abe:	46c0      	nop			; (mov r8, r8)
 8000ac0:	000007ff 	.word	0x000007ff

08000ac4 <__ledf2>:
 8000ac4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000ac6:	465f      	mov	r7, fp
 8000ac8:	464d      	mov	r5, r9
 8000aca:	4644      	mov	r4, r8
 8000acc:	4656      	mov	r6, sl
 8000ace:	4680      	mov	r8, r0
 8000ad0:	b4f0      	push	{r4, r5, r6, r7}
 8000ad2:	1c06      	adds	r6, r0, #0
 8000ad4:	0308      	lsls	r0, r1, #12
 8000ad6:	0b00      	lsrs	r0, r0, #12
 8000ad8:	4684      	mov	ip, r0
 8000ada:	482c      	ldr	r0, [pc, #176]	; (8000b8c <__ledf2+0xc8>)
 8000adc:	004c      	lsls	r4, r1, #1
 8000ade:	031f      	lsls	r7, r3, #12
 8000ae0:	005d      	lsls	r5, r3, #1
 8000ae2:	0fc9      	lsrs	r1, r1, #31
 8000ae4:	0d64      	lsrs	r4, r4, #21
 8000ae6:	468b      	mov	fp, r1
 8000ae8:	4691      	mov	r9, r2
 8000aea:	0b3f      	lsrs	r7, r7, #12
 8000aec:	0d6d      	lsrs	r5, r5, #21
 8000aee:	0fdb      	lsrs	r3, r3, #31
 8000af0:	4284      	cmp	r4, r0
 8000af2:	d012      	beq.n	8000b1a <__ledf2+0x56>
 8000af4:	4285      	cmp	r5, r0
 8000af6:	d025      	beq.n	8000b44 <__ledf2+0x80>
 8000af8:	2c00      	cmp	r4, #0
 8000afa:	d114      	bne.n	8000b26 <__ledf2+0x62>
 8000afc:	4661      	mov	r1, ip
 8000afe:	430e      	orrs	r6, r1
 8000b00:	4270      	negs	r0, r6
 8000b02:	4146      	adcs	r6, r0
 8000b04:	2d00      	cmp	r5, #0
 8000b06:	d035      	beq.n	8000b74 <__ledf2+0xb0>
 8000b08:	2e00      	cmp	r6, #0
 8000b0a:	d021      	beq.n	8000b50 <__ledf2+0x8c>
 8000b0c:	4258      	negs	r0, r3
 8000b0e:	4158      	adcs	r0, r3
 8000b10:	2101      	movs	r1, #1
 8000b12:	4243      	negs	r3, r0
 8000b14:	430b      	orrs	r3, r1
 8000b16:	1c18      	adds	r0, r3, #0
 8000b18:	e00e      	b.n	8000b38 <__ledf2+0x74>
 8000b1a:	4661      	mov	r1, ip
 8000b1c:	2002      	movs	r0, #2
 8000b1e:	4331      	orrs	r1, r6
 8000b20:	d10a      	bne.n	8000b38 <__ledf2+0x74>
 8000b22:	42a5      	cmp	r5, r4
 8000b24:	d00e      	beq.n	8000b44 <__ledf2+0x80>
 8000b26:	2d00      	cmp	r5, #0
 8000b28:	d112      	bne.n	8000b50 <__ledf2+0x8c>
 8000b2a:	433a      	orrs	r2, r7
 8000b2c:	d110      	bne.n	8000b50 <__ledf2+0x8c>
 8000b2e:	465b      	mov	r3, fp
 8000b30:	4259      	negs	r1, r3
 8000b32:	2301      	movs	r3, #1
 8000b34:	4319      	orrs	r1, r3
 8000b36:	1c08      	adds	r0, r1, #0
 8000b38:	bc3c      	pop	{r2, r3, r4, r5}
 8000b3a:	4690      	mov	r8, r2
 8000b3c:	4699      	mov	r9, r3
 8000b3e:	46a2      	mov	sl, r4
 8000b40:	46ab      	mov	fp, r5
 8000b42:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b44:	1c39      	adds	r1, r7, #0
 8000b46:	2002      	movs	r0, #2
 8000b48:	4311      	orrs	r1, r2
 8000b4a:	d1f5      	bne.n	8000b38 <__ledf2+0x74>
 8000b4c:	2c00      	cmp	r4, #0
 8000b4e:	d0d5      	beq.n	8000afc <__ledf2+0x38>
 8000b50:	459b      	cmp	fp, r3
 8000b52:	d1ec      	bne.n	8000b2e <__ledf2+0x6a>
 8000b54:	42ac      	cmp	r4, r5
 8000b56:	dcea      	bgt.n	8000b2e <__ledf2+0x6a>
 8000b58:	db05      	blt.n	8000b66 <__ledf2+0xa2>
 8000b5a:	45bc      	cmp	ip, r7
 8000b5c:	d8e7      	bhi.n	8000b2e <__ledf2+0x6a>
 8000b5e:	d00f      	beq.n	8000b80 <__ledf2+0xbc>
 8000b60:	2000      	movs	r0, #0
 8000b62:	45bc      	cmp	ip, r7
 8000b64:	d2e8      	bcs.n	8000b38 <__ledf2+0x74>
 8000b66:	4658      	mov	r0, fp
 8000b68:	4241      	negs	r1, r0
 8000b6a:	4148      	adcs	r0, r1
 8000b6c:	4241      	negs	r1, r0
 8000b6e:	2001      	movs	r0, #1
 8000b70:	4308      	orrs	r0, r1
 8000b72:	e7e1      	b.n	8000b38 <__ledf2+0x74>
 8000b74:	433a      	orrs	r2, r7
 8000b76:	d1c7      	bne.n	8000b08 <__ledf2+0x44>
 8000b78:	2000      	movs	r0, #0
 8000b7a:	2e00      	cmp	r6, #0
 8000b7c:	d1dc      	bne.n	8000b38 <__ledf2+0x74>
 8000b7e:	e7d6      	b.n	8000b2e <__ledf2+0x6a>
 8000b80:	45c8      	cmp	r8, r9
 8000b82:	d8d4      	bhi.n	8000b2e <__ledf2+0x6a>
 8000b84:	2000      	movs	r0, #0
 8000b86:	45c8      	cmp	r8, r9
 8000b88:	d3ed      	bcc.n	8000b66 <__ledf2+0xa2>
 8000b8a:	e7d5      	b.n	8000b38 <__ledf2+0x74>
 8000b8c:	000007ff 	.word	0x000007ff

08000b90 <__aeabi_i2d>:
 8000b90:	b538      	push	{r3, r4, r5, lr}
 8000b92:	1e04      	subs	r4, r0, #0
 8000b94:	d016      	beq.n	8000bc4 <__aeabi_i2d+0x34>
 8000b96:	0fc5      	lsrs	r5, r0, #31
 8000b98:	d000      	beq.n	8000b9c <__aeabi_i2d+0xc>
 8000b9a:	4244      	negs	r4, r0
 8000b9c:	1c20      	adds	r0, r4, #0
 8000b9e:	f000 f833 	bl	8000c08 <__clzsi2>
 8000ba2:	4b17      	ldr	r3, [pc, #92]	; (8000c00 <__aeabi_i2d+0x70>)
 8000ba4:	1a1b      	subs	r3, r3, r0
 8000ba6:	280a      	cmp	r0, #10
 8000ba8:	dc21      	bgt.n	8000bee <__aeabi_i2d+0x5e>
 8000baa:	1c02      	adds	r2, r0, #0
 8000bac:	1c21      	adds	r1, r4, #0
 8000bae:	3215      	adds	r2, #21
 8000bb0:	4091      	lsls	r1, r2
 8000bb2:	1c0a      	adds	r2, r1, #0
 8000bb4:	210b      	movs	r1, #11
 8000bb6:	1a08      	subs	r0, r1, r0
 8000bb8:	40c4      	lsrs	r4, r0
 8000bba:	055b      	lsls	r3, r3, #21
 8000bbc:	0324      	lsls	r4, r4, #12
 8000bbe:	0b24      	lsrs	r4, r4, #12
 8000bc0:	0d5b      	lsrs	r3, r3, #21
 8000bc2:	e003      	b.n	8000bcc <__aeabi_i2d+0x3c>
 8000bc4:	2500      	movs	r5, #0
 8000bc6:	2300      	movs	r3, #0
 8000bc8:	2400      	movs	r4, #0
 8000bca:	2200      	movs	r2, #0
 8000bcc:	2100      	movs	r1, #0
 8000bce:	1c10      	adds	r0, r2, #0
 8000bd0:	0324      	lsls	r4, r4, #12
 8000bd2:	0d0a      	lsrs	r2, r1, #20
 8000bd4:	0512      	lsls	r2, r2, #20
 8000bd6:	0b24      	lsrs	r4, r4, #12
 8000bd8:	4314      	orrs	r4, r2
 8000bda:	4a0a      	ldr	r2, [pc, #40]	; (8000c04 <__aeabi_i2d+0x74>)
 8000bdc:	051b      	lsls	r3, r3, #20
 8000bde:	4014      	ands	r4, r2
 8000be0:	431c      	orrs	r4, r3
 8000be2:	0064      	lsls	r4, r4, #1
 8000be4:	07ed      	lsls	r5, r5, #31
 8000be6:	0864      	lsrs	r4, r4, #1
 8000be8:	432c      	orrs	r4, r5
 8000bea:	1c21      	adds	r1, r4, #0
 8000bec:	bd38      	pop	{r3, r4, r5, pc}
 8000bee:	380b      	subs	r0, #11
 8000bf0:	4084      	lsls	r4, r0
 8000bf2:	055b      	lsls	r3, r3, #21
 8000bf4:	0324      	lsls	r4, r4, #12
 8000bf6:	0b24      	lsrs	r4, r4, #12
 8000bf8:	0d5b      	lsrs	r3, r3, #21
 8000bfa:	2200      	movs	r2, #0
 8000bfc:	e7e6      	b.n	8000bcc <__aeabi_i2d+0x3c>
 8000bfe:	46c0      	nop			; (mov r8, r8)
 8000c00:	0000041e 	.word	0x0000041e
 8000c04:	800fffff 	.word	0x800fffff

08000c08 <__clzsi2>:
 8000c08:	211c      	movs	r1, #28
 8000c0a:	2301      	movs	r3, #1
 8000c0c:	041b      	lsls	r3, r3, #16
 8000c0e:	4298      	cmp	r0, r3
 8000c10:	d301      	bcc.n	8000c16 <__clzsi2+0xe>
 8000c12:	0c00      	lsrs	r0, r0, #16
 8000c14:	3910      	subs	r1, #16
 8000c16:	0a1b      	lsrs	r3, r3, #8
 8000c18:	4298      	cmp	r0, r3
 8000c1a:	d301      	bcc.n	8000c20 <__clzsi2+0x18>
 8000c1c:	0a00      	lsrs	r0, r0, #8
 8000c1e:	3908      	subs	r1, #8
 8000c20:	091b      	lsrs	r3, r3, #4
 8000c22:	4298      	cmp	r0, r3
 8000c24:	d301      	bcc.n	8000c2a <__clzsi2+0x22>
 8000c26:	0900      	lsrs	r0, r0, #4
 8000c28:	3904      	subs	r1, #4
 8000c2a:	a202      	add	r2, pc, #8	; (adr r2, 8000c34 <__clzsi2+0x2c>)
 8000c2c:	5c10      	ldrb	r0, [r2, r0]
 8000c2e:	1840      	adds	r0, r0, r1
 8000c30:	4770      	bx	lr
 8000c32:	46c0      	nop			; (mov r8, r8)
 8000c34:	02020304 	.word	0x02020304
 8000c38:	01010101 	.word	0x01010101
	...

08000c44 <Reset_Handler>:
 8000c44:	480d      	ldr	r0, [pc, #52]	; (8000c7c <LoopForever+0x2>)
 8000c46:	4685      	mov	sp, r0
 8000c48:	480d      	ldr	r0, [pc, #52]	; (8000c80 <LoopForever+0x6>)
 8000c4a:	490e      	ldr	r1, [pc, #56]	; (8000c84 <LoopForever+0xa>)
 8000c4c:	4a0e      	ldr	r2, [pc, #56]	; (8000c88 <LoopForever+0xe>)
 8000c4e:	2300      	movs	r3, #0
 8000c50:	e002      	b.n	8000c58 <LoopCopyDataInit>

08000c52 <CopyDataInit>:
 8000c52:	58d4      	ldr	r4, [r2, r3]
 8000c54:	50c4      	str	r4, [r0, r3]
 8000c56:	3304      	adds	r3, #4

08000c58 <LoopCopyDataInit>:
 8000c58:	18c4      	adds	r4, r0, r3
 8000c5a:	428c      	cmp	r4, r1
 8000c5c:	d3f9      	bcc.n	8000c52 <CopyDataInit>
 8000c5e:	4a0b      	ldr	r2, [pc, #44]	; (8000c8c <LoopForever+0x12>)
 8000c60:	4c0b      	ldr	r4, [pc, #44]	; (8000c90 <LoopForever+0x16>)
 8000c62:	2300      	movs	r3, #0
 8000c64:	e001      	b.n	8000c6a <LoopFillZerobss>

08000c66 <FillZerobss>:
 8000c66:	6013      	str	r3, [r2, #0]
 8000c68:	3204      	adds	r2, #4

08000c6a <LoopFillZerobss>:
 8000c6a:	42a2      	cmp	r2, r4
 8000c6c:	d3fb      	bcc.n	8000c66 <FillZerobss>
 8000c6e:	f000 fda5 	bl	80017bc <SystemInit>
 8000c72:	f001 f995 	bl	8001fa0 <__libc_init_array>
 8000c76:	f000 fd47 	bl	8001708 <main>

08000c7a <LoopForever>:
 8000c7a:	e7fe      	b.n	8000c7a <LoopForever>
 8000c7c:	20002000 	.word	0x20002000
 8000c80:	20000000 	.word	0x20000000
 8000c84:	20000430 	.word	0x20000430
 8000c88:	08002140 	.word	0x08002140
 8000c8c:	20000430 	.word	0x20000430
 8000c90:	200004c8 	.word	0x200004c8

08000c94 <ADC1_COMP_IRQHandler>:
 8000c94:	e7fe      	b.n	8000c94 <ADC1_COMP_IRQHandler>
	...

08000c98 <NVIC_EnableIRQ>:
 8000c98:	b580      	push	{r7, lr}
 8000c9a:	b082      	sub	sp, #8
 8000c9c:	af00      	add	r7, sp, #0
 8000c9e:	1c02      	adds	r2, r0, #0
 8000ca0:	1dfb      	adds	r3, r7, #7
 8000ca2:	701a      	strb	r2, [r3, #0]
 8000ca4:	4b06      	ldr	r3, [pc, #24]	; (8000cc0 <NVIC_EnableIRQ+0x28>)
 8000ca6:	1dfa      	adds	r2, r7, #7
 8000ca8:	7812      	ldrb	r2, [r2, #0]
 8000caa:	1c11      	adds	r1, r2, #0
 8000cac:	221f      	movs	r2, #31
 8000cae:	400a      	ands	r2, r1
 8000cb0:	2101      	movs	r1, #1
 8000cb2:	4091      	lsls	r1, r2
 8000cb4:	1c0a      	adds	r2, r1, #0
 8000cb6:	601a      	str	r2, [r3, #0]
 8000cb8:	46bd      	mov	sp, r7
 8000cba:	b002      	add	sp, #8
 8000cbc:	bd80      	pop	{r7, pc}
 8000cbe:	46c0      	nop			; (mov r8, r8)
 8000cc0:	e000e100 	.word	0xe000e100

08000cc4 <NVIC_SetPriority>:
 8000cc4:	b5b0      	push	{r4, r5, r7, lr}
 8000cc6:	b082      	sub	sp, #8
 8000cc8:	af00      	add	r7, sp, #0
 8000cca:	1c02      	adds	r2, r0, #0
 8000ccc:	6039      	str	r1, [r7, #0]
 8000cce:	1dfb      	adds	r3, r7, #7
 8000cd0:	701a      	strb	r2, [r3, #0]
 8000cd2:	1dfb      	adds	r3, r7, #7
 8000cd4:	781b      	ldrb	r3, [r3, #0]
 8000cd6:	2b7f      	cmp	r3, #127	; 0x7f
 8000cd8:	d92f      	bls.n	8000d3a <NVIC_SetPriority+0x76>
 8000cda:	4c2d      	ldr	r4, [pc, #180]	; (8000d90 <NVIC_SetPriority+0xcc>)
 8000cdc:	1dfb      	adds	r3, r7, #7
 8000cde:	781b      	ldrb	r3, [r3, #0]
 8000ce0:	1c1a      	adds	r2, r3, #0
 8000ce2:	230f      	movs	r3, #15
 8000ce4:	4013      	ands	r3, r2
 8000ce6:	3b08      	subs	r3, #8
 8000ce8:	0899      	lsrs	r1, r3, #2
 8000cea:	4a29      	ldr	r2, [pc, #164]	; (8000d90 <NVIC_SetPriority+0xcc>)
 8000cec:	1dfb      	adds	r3, r7, #7
 8000cee:	781b      	ldrb	r3, [r3, #0]
 8000cf0:	1c18      	adds	r0, r3, #0
 8000cf2:	230f      	movs	r3, #15
 8000cf4:	4003      	ands	r3, r0
 8000cf6:	3b08      	subs	r3, #8
 8000cf8:	089b      	lsrs	r3, r3, #2
 8000cfa:	3306      	adds	r3, #6
 8000cfc:	009b      	lsls	r3, r3, #2
 8000cfe:	18d3      	adds	r3, r2, r3
 8000d00:	685b      	ldr	r3, [r3, #4]
 8000d02:	1dfa      	adds	r2, r7, #7
 8000d04:	7812      	ldrb	r2, [r2, #0]
 8000d06:	1c10      	adds	r0, r2, #0
 8000d08:	2203      	movs	r2, #3
 8000d0a:	4002      	ands	r2, r0
 8000d0c:	00d2      	lsls	r2, r2, #3
 8000d0e:	1c10      	adds	r0, r2, #0
 8000d10:	22ff      	movs	r2, #255	; 0xff
 8000d12:	4082      	lsls	r2, r0
 8000d14:	43d2      	mvns	r2, r2
 8000d16:	401a      	ands	r2, r3
 8000d18:	683b      	ldr	r3, [r7, #0]
 8000d1a:	019b      	lsls	r3, r3, #6
 8000d1c:	20ff      	movs	r0, #255	; 0xff
 8000d1e:	4003      	ands	r3, r0
 8000d20:	1df8      	adds	r0, r7, #7
 8000d22:	7800      	ldrb	r0, [r0, #0]
 8000d24:	1c05      	adds	r5, r0, #0
 8000d26:	2003      	movs	r0, #3
 8000d28:	4028      	ands	r0, r5
 8000d2a:	00c0      	lsls	r0, r0, #3
 8000d2c:	4083      	lsls	r3, r0
 8000d2e:	431a      	orrs	r2, r3
 8000d30:	1d8b      	adds	r3, r1, #6
 8000d32:	009b      	lsls	r3, r3, #2
 8000d34:	18e3      	adds	r3, r4, r3
 8000d36:	605a      	str	r2, [r3, #4]
 8000d38:	e026      	b.n	8000d88 <NVIC_SetPriority+0xc4>
 8000d3a:	4c16      	ldr	r4, [pc, #88]	; (8000d94 <NVIC_SetPriority+0xd0>)
 8000d3c:	1dfb      	adds	r3, r7, #7
 8000d3e:	781b      	ldrb	r3, [r3, #0]
 8000d40:	b25b      	sxtb	r3, r3
 8000d42:	089b      	lsrs	r3, r3, #2
 8000d44:	4913      	ldr	r1, [pc, #76]	; (8000d94 <NVIC_SetPriority+0xd0>)
 8000d46:	1dfa      	adds	r2, r7, #7
 8000d48:	7812      	ldrb	r2, [r2, #0]
 8000d4a:	b252      	sxtb	r2, r2
 8000d4c:	0892      	lsrs	r2, r2, #2
 8000d4e:	32c0      	adds	r2, #192	; 0xc0
 8000d50:	0092      	lsls	r2, r2, #2
 8000d52:	5852      	ldr	r2, [r2, r1]
 8000d54:	1df9      	adds	r1, r7, #7
 8000d56:	7809      	ldrb	r1, [r1, #0]
 8000d58:	1c08      	adds	r0, r1, #0
 8000d5a:	2103      	movs	r1, #3
 8000d5c:	4001      	ands	r1, r0
 8000d5e:	00c9      	lsls	r1, r1, #3
 8000d60:	1c08      	adds	r0, r1, #0
 8000d62:	21ff      	movs	r1, #255	; 0xff
 8000d64:	4081      	lsls	r1, r0
 8000d66:	43c9      	mvns	r1, r1
 8000d68:	4011      	ands	r1, r2
 8000d6a:	683a      	ldr	r2, [r7, #0]
 8000d6c:	0192      	lsls	r2, r2, #6
 8000d6e:	20ff      	movs	r0, #255	; 0xff
 8000d70:	4002      	ands	r2, r0
 8000d72:	1df8      	adds	r0, r7, #7
 8000d74:	7800      	ldrb	r0, [r0, #0]
 8000d76:	1c05      	adds	r5, r0, #0
 8000d78:	2003      	movs	r0, #3
 8000d7a:	4028      	ands	r0, r5
 8000d7c:	00c0      	lsls	r0, r0, #3
 8000d7e:	4082      	lsls	r2, r0
 8000d80:	430a      	orrs	r2, r1
 8000d82:	33c0      	adds	r3, #192	; 0xc0
 8000d84:	009b      	lsls	r3, r3, #2
 8000d86:	511a      	str	r2, [r3, r4]
 8000d88:	46bd      	mov	sp, r7
 8000d8a:	b002      	add	sp, #8
 8000d8c:	bdb0      	pop	{r4, r5, r7, pc}
 8000d8e:	46c0      	nop			; (mov r8, r8)
 8000d90:	e000ed00 	.word	0xe000ed00
 8000d94:	e000e100 	.word	0xe000e100

08000d98 <SysTick_Config>:
 8000d98:	b580      	push	{r7, lr}
 8000d9a:	b082      	sub	sp, #8
 8000d9c:	af00      	add	r7, sp, #0
 8000d9e:	6078      	str	r0, [r7, #4]
 8000da0:	687b      	ldr	r3, [r7, #4]
 8000da2:	3b01      	subs	r3, #1
 8000da4:	4a0c      	ldr	r2, [pc, #48]	; (8000dd8 <SysTick_Config+0x40>)
 8000da6:	4293      	cmp	r3, r2
 8000da8:	d901      	bls.n	8000dae <SysTick_Config+0x16>
 8000daa:	2301      	movs	r3, #1
 8000dac:	e010      	b.n	8000dd0 <SysTick_Config+0x38>
 8000dae:	4b0b      	ldr	r3, [pc, #44]	; (8000ddc <SysTick_Config+0x44>)
 8000db0:	687a      	ldr	r2, [r7, #4]
 8000db2:	3a01      	subs	r2, #1
 8000db4:	605a      	str	r2, [r3, #4]
 8000db6:	2301      	movs	r3, #1
 8000db8:	425b      	negs	r3, r3
 8000dba:	1c18      	adds	r0, r3, #0
 8000dbc:	2103      	movs	r1, #3
 8000dbe:	f7ff ff81 	bl	8000cc4 <NVIC_SetPriority>
 8000dc2:	4b06      	ldr	r3, [pc, #24]	; (8000ddc <SysTick_Config+0x44>)
 8000dc4:	2200      	movs	r2, #0
 8000dc6:	609a      	str	r2, [r3, #8]
 8000dc8:	4b04      	ldr	r3, [pc, #16]	; (8000ddc <SysTick_Config+0x44>)
 8000dca:	2207      	movs	r2, #7
 8000dcc:	601a      	str	r2, [r3, #0]
 8000dce:	2300      	movs	r3, #0
 8000dd0:	1c18      	adds	r0, r3, #0
 8000dd2:	46bd      	mov	sp, r7
 8000dd4:	b002      	add	sp, #8
 8000dd6:	bd80      	pop	{r7, pc}
 8000dd8:	00ffffff 	.word	0x00ffffff
 8000ddc:	e000e010 	.word	0xe000e010

08000de0 <LL_AHB1_GRP1_EnableClock>:
 8000de0:	b580      	push	{r7, lr}
 8000de2:	b084      	sub	sp, #16
 8000de4:	af00      	add	r7, sp, #0
 8000de6:	6078      	str	r0, [r7, #4]
 8000de8:	4b07      	ldr	r3, [pc, #28]	; (8000e08 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000dea:	4a07      	ldr	r2, [pc, #28]	; (8000e08 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000dec:	6951      	ldr	r1, [r2, #20]
 8000dee:	687a      	ldr	r2, [r7, #4]
 8000df0:	430a      	orrs	r2, r1
 8000df2:	615a      	str	r2, [r3, #20]
 8000df4:	4b04      	ldr	r3, [pc, #16]	; (8000e08 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000df6:	695b      	ldr	r3, [r3, #20]
 8000df8:	687a      	ldr	r2, [r7, #4]
 8000dfa:	4013      	ands	r3, r2
 8000dfc:	60fb      	str	r3, [r7, #12]
 8000dfe:	68fb      	ldr	r3, [r7, #12]
 8000e00:	46bd      	mov	sp, r7
 8000e02:	b004      	add	sp, #16
 8000e04:	bd80      	pop	{r7, pc}
 8000e06:	46c0      	nop			; (mov r8, r8)
 8000e08:	40021000 	.word	0x40021000

08000e0c <LL_APB1_GRP1_EnableClock>:
 8000e0c:	b580      	push	{r7, lr}
 8000e0e:	b084      	sub	sp, #16
 8000e10:	af00      	add	r7, sp, #0
 8000e12:	6078      	str	r0, [r7, #4]
 8000e14:	4b07      	ldr	r3, [pc, #28]	; (8000e34 <LL_APB1_GRP1_EnableClock+0x28>)
 8000e16:	4a07      	ldr	r2, [pc, #28]	; (8000e34 <LL_APB1_GRP1_EnableClock+0x28>)
 8000e18:	69d1      	ldr	r1, [r2, #28]
 8000e1a:	687a      	ldr	r2, [r7, #4]
 8000e1c:	430a      	orrs	r2, r1
 8000e1e:	61da      	str	r2, [r3, #28]
 8000e20:	4b04      	ldr	r3, [pc, #16]	; (8000e34 <LL_APB1_GRP1_EnableClock+0x28>)
 8000e22:	69db      	ldr	r3, [r3, #28]
 8000e24:	687a      	ldr	r2, [r7, #4]
 8000e26:	4013      	ands	r3, r2
 8000e28:	60fb      	str	r3, [r7, #12]
 8000e2a:	68fb      	ldr	r3, [r7, #12]
 8000e2c:	46bd      	mov	sp, r7
 8000e2e:	b004      	add	sp, #16
 8000e30:	bd80      	pop	{r7, pc}
 8000e32:	46c0      	nop			; (mov r8, r8)
 8000e34:	40021000 	.word	0x40021000

08000e38 <LL_APB1_GRP2_EnableClock>:
 8000e38:	b580      	push	{r7, lr}
 8000e3a:	b084      	sub	sp, #16
 8000e3c:	af00      	add	r7, sp, #0
 8000e3e:	6078      	str	r0, [r7, #4]
 8000e40:	4b07      	ldr	r3, [pc, #28]	; (8000e60 <LL_APB1_GRP2_EnableClock+0x28>)
 8000e42:	4a07      	ldr	r2, [pc, #28]	; (8000e60 <LL_APB1_GRP2_EnableClock+0x28>)
 8000e44:	6991      	ldr	r1, [r2, #24]
 8000e46:	687a      	ldr	r2, [r7, #4]
 8000e48:	430a      	orrs	r2, r1
 8000e4a:	619a      	str	r2, [r3, #24]
 8000e4c:	4b04      	ldr	r3, [pc, #16]	; (8000e60 <LL_APB1_GRP2_EnableClock+0x28>)
 8000e4e:	699b      	ldr	r3, [r3, #24]
 8000e50:	687a      	ldr	r2, [r7, #4]
 8000e52:	4013      	ands	r3, r2
 8000e54:	60fb      	str	r3, [r7, #12]
 8000e56:	68fb      	ldr	r3, [r7, #12]
 8000e58:	46bd      	mov	sp, r7
 8000e5a:	b004      	add	sp, #16
 8000e5c:	bd80      	pop	{r7, pc}
 8000e5e:	46c0      	nop			; (mov r8, r8)
 8000e60:	40021000 	.word	0x40021000

08000e64 <LL_GPIO_SetPinMode>:
 8000e64:	b580      	push	{r7, lr}
 8000e66:	b084      	sub	sp, #16
 8000e68:	af00      	add	r7, sp, #0
 8000e6a:	60f8      	str	r0, [r7, #12]
 8000e6c:	60b9      	str	r1, [r7, #8]
 8000e6e:	607a      	str	r2, [r7, #4]
 8000e70:	68fb      	ldr	r3, [r7, #12]
 8000e72:	6819      	ldr	r1, [r3, #0]
 8000e74:	68bb      	ldr	r3, [r7, #8]
 8000e76:	68ba      	ldr	r2, [r7, #8]
 8000e78:	435a      	muls	r2, r3
 8000e7a:	1c13      	adds	r3, r2, #0
 8000e7c:	005b      	lsls	r3, r3, #1
 8000e7e:	189b      	adds	r3, r3, r2
 8000e80:	43db      	mvns	r3, r3
 8000e82:	400b      	ands	r3, r1
 8000e84:	1c1a      	adds	r2, r3, #0
 8000e86:	68bb      	ldr	r3, [r7, #8]
 8000e88:	68b9      	ldr	r1, [r7, #8]
 8000e8a:	434b      	muls	r3, r1
 8000e8c:	6879      	ldr	r1, [r7, #4]
 8000e8e:	434b      	muls	r3, r1
 8000e90:	431a      	orrs	r2, r3
 8000e92:	68fb      	ldr	r3, [r7, #12]
 8000e94:	601a      	str	r2, [r3, #0]
 8000e96:	46bd      	mov	sp, r7
 8000e98:	b004      	add	sp, #16
 8000e9a:	bd80      	pop	{r7, pc}

08000e9c <LL_GPIO_SetPinPull>:
 8000e9c:	b580      	push	{r7, lr}
 8000e9e:	b084      	sub	sp, #16
 8000ea0:	af00      	add	r7, sp, #0
 8000ea2:	60f8      	str	r0, [r7, #12]
 8000ea4:	60b9      	str	r1, [r7, #8]
 8000ea6:	607a      	str	r2, [r7, #4]
 8000ea8:	68fb      	ldr	r3, [r7, #12]
 8000eaa:	68d9      	ldr	r1, [r3, #12]
 8000eac:	68bb      	ldr	r3, [r7, #8]
 8000eae:	68ba      	ldr	r2, [r7, #8]
 8000eb0:	435a      	muls	r2, r3
 8000eb2:	1c13      	adds	r3, r2, #0
 8000eb4:	005b      	lsls	r3, r3, #1
 8000eb6:	189b      	adds	r3, r3, r2
 8000eb8:	43db      	mvns	r3, r3
 8000eba:	400b      	ands	r3, r1
 8000ebc:	1c1a      	adds	r2, r3, #0
 8000ebe:	68bb      	ldr	r3, [r7, #8]
 8000ec0:	68b9      	ldr	r1, [r7, #8]
 8000ec2:	434b      	muls	r3, r1
 8000ec4:	6879      	ldr	r1, [r7, #4]
 8000ec6:	434b      	muls	r3, r1
 8000ec8:	431a      	orrs	r2, r3
 8000eca:	68fb      	ldr	r3, [r7, #12]
 8000ecc:	60da      	str	r2, [r3, #12]
 8000ece:	46bd      	mov	sp, r7
 8000ed0:	b004      	add	sp, #16
 8000ed2:	bd80      	pop	{r7, pc}

08000ed4 <LL_RCC_HSI_Enable>:
 8000ed4:	b580      	push	{r7, lr}
 8000ed6:	af00      	add	r7, sp, #0
 8000ed8:	4b03      	ldr	r3, [pc, #12]	; (8000ee8 <LL_RCC_HSI_Enable+0x14>)
 8000eda:	4a03      	ldr	r2, [pc, #12]	; (8000ee8 <LL_RCC_HSI_Enable+0x14>)
 8000edc:	6812      	ldr	r2, [r2, #0]
 8000ede:	2101      	movs	r1, #1
 8000ee0:	430a      	orrs	r2, r1
 8000ee2:	601a      	str	r2, [r3, #0]
 8000ee4:	46bd      	mov	sp, r7
 8000ee6:	bd80      	pop	{r7, pc}
 8000ee8:	40021000 	.word	0x40021000

08000eec <LL_RCC_HSI_IsReady>:
 8000eec:	b580      	push	{r7, lr}
 8000eee:	af00      	add	r7, sp, #0
 8000ef0:	4b04      	ldr	r3, [pc, #16]	; (8000f04 <LL_RCC_HSI_IsReady+0x18>)
 8000ef2:	681b      	ldr	r3, [r3, #0]
 8000ef4:	2202      	movs	r2, #2
 8000ef6:	4013      	ands	r3, r2
 8000ef8:	1e5a      	subs	r2, r3, #1
 8000efa:	4193      	sbcs	r3, r2
 8000efc:	b2db      	uxtb	r3, r3
 8000efe:	1c18      	adds	r0, r3, #0
 8000f00:	46bd      	mov	sp, r7
 8000f02:	bd80      	pop	{r7, pc}
 8000f04:	40021000 	.word	0x40021000

08000f08 <LL_RCC_SetSysClkSource>:
 8000f08:	b580      	push	{r7, lr}
 8000f0a:	b082      	sub	sp, #8
 8000f0c:	af00      	add	r7, sp, #0
 8000f0e:	6078      	str	r0, [r7, #4]
 8000f10:	4b05      	ldr	r3, [pc, #20]	; (8000f28 <LL_RCC_SetSysClkSource+0x20>)
 8000f12:	4a05      	ldr	r2, [pc, #20]	; (8000f28 <LL_RCC_SetSysClkSource+0x20>)
 8000f14:	6852      	ldr	r2, [r2, #4]
 8000f16:	2103      	movs	r1, #3
 8000f18:	438a      	bics	r2, r1
 8000f1a:	1c11      	adds	r1, r2, #0
 8000f1c:	687a      	ldr	r2, [r7, #4]
 8000f1e:	430a      	orrs	r2, r1
 8000f20:	605a      	str	r2, [r3, #4]
 8000f22:	46bd      	mov	sp, r7
 8000f24:	b002      	add	sp, #8
 8000f26:	bd80      	pop	{r7, pc}
 8000f28:	40021000 	.word	0x40021000

08000f2c <LL_RCC_GetSysClkSource>:
 8000f2c:	b580      	push	{r7, lr}
 8000f2e:	af00      	add	r7, sp, #0
 8000f30:	4b03      	ldr	r3, [pc, #12]	; (8000f40 <LL_RCC_GetSysClkSource+0x14>)
 8000f32:	685b      	ldr	r3, [r3, #4]
 8000f34:	220c      	movs	r2, #12
 8000f36:	4013      	ands	r3, r2
 8000f38:	1c18      	adds	r0, r3, #0
 8000f3a:	46bd      	mov	sp, r7
 8000f3c:	bd80      	pop	{r7, pc}
 8000f3e:	46c0      	nop			; (mov r8, r8)
 8000f40:	40021000 	.word	0x40021000

08000f44 <LL_RCC_SetAHBPrescaler>:
 8000f44:	b580      	push	{r7, lr}
 8000f46:	b082      	sub	sp, #8
 8000f48:	af00      	add	r7, sp, #0
 8000f4a:	6078      	str	r0, [r7, #4]
 8000f4c:	4b05      	ldr	r3, [pc, #20]	; (8000f64 <LL_RCC_SetAHBPrescaler+0x20>)
 8000f4e:	4a05      	ldr	r2, [pc, #20]	; (8000f64 <LL_RCC_SetAHBPrescaler+0x20>)
 8000f50:	6852      	ldr	r2, [r2, #4]
 8000f52:	21f0      	movs	r1, #240	; 0xf0
 8000f54:	438a      	bics	r2, r1
 8000f56:	1c11      	adds	r1, r2, #0
 8000f58:	687a      	ldr	r2, [r7, #4]
 8000f5a:	430a      	orrs	r2, r1
 8000f5c:	605a      	str	r2, [r3, #4]
 8000f5e:	46bd      	mov	sp, r7
 8000f60:	b002      	add	sp, #8
 8000f62:	bd80      	pop	{r7, pc}
 8000f64:	40021000 	.word	0x40021000

08000f68 <LL_RCC_SetAPB1Prescaler>:
 8000f68:	b580      	push	{r7, lr}
 8000f6a:	b082      	sub	sp, #8
 8000f6c:	af00      	add	r7, sp, #0
 8000f6e:	6078      	str	r0, [r7, #4]
 8000f70:	4b05      	ldr	r3, [pc, #20]	; (8000f88 <LL_RCC_SetAPB1Prescaler+0x20>)
 8000f72:	4a05      	ldr	r2, [pc, #20]	; (8000f88 <LL_RCC_SetAPB1Prescaler+0x20>)
 8000f74:	6852      	ldr	r2, [r2, #4]
 8000f76:	4905      	ldr	r1, [pc, #20]	; (8000f8c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000f78:	4011      	ands	r1, r2
 8000f7a:	687a      	ldr	r2, [r7, #4]
 8000f7c:	430a      	orrs	r2, r1
 8000f7e:	605a      	str	r2, [r3, #4]
 8000f80:	46bd      	mov	sp, r7
 8000f82:	b002      	add	sp, #8
 8000f84:	bd80      	pop	{r7, pc}
 8000f86:	46c0      	nop			; (mov r8, r8)
 8000f88:	40021000 	.word	0x40021000
 8000f8c:	fffff8ff 	.word	0xfffff8ff

08000f90 <LL_RCC_PLL_Enable>:
 8000f90:	b580      	push	{r7, lr}
 8000f92:	af00      	add	r7, sp, #0
 8000f94:	4b04      	ldr	r3, [pc, #16]	; (8000fa8 <LL_RCC_PLL_Enable+0x18>)
 8000f96:	4a04      	ldr	r2, [pc, #16]	; (8000fa8 <LL_RCC_PLL_Enable+0x18>)
 8000f98:	6812      	ldr	r2, [r2, #0]
 8000f9a:	2180      	movs	r1, #128	; 0x80
 8000f9c:	0449      	lsls	r1, r1, #17
 8000f9e:	430a      	orrs	r2, r1
 8000fa0:	601a      	str	r2, [r3, #0]
 8000fa2:	46bd      	mov	sp, r7
 8000fa4:	bd80      	pop	{r7, pc}
 8000fa6:	46c0      	nop			; (mov r8, r8)
 8000fa8:	40021000 	.word	0x40021000

08000fac <LL_RCC_PLL_IsReady>:
 8000fac:	b580      	push	{r7, lr}
 8000fae:	af00      	add	r7, sp, #0
 8000fb0:	4b05      	ldr	r3, [pc, #20]	; (8000fc8 <LL_RCC_PLL_IsReady+0x1c>)
 8000fb2:	681a      	ldr	r2, [r3, #0]
 8000fb4:	2380      	movs	r3, #128	; 0x80
 8000fb6:	049b      	lsls	r3, r3, #18
 8000fb8:	4013      	ands	r3, r2
 8000fba:	1e5a      	subs	r2, r3, #1
 8000fbc:	4193      	sbcs	r3, r2
 8000fbe:	b2db      	uxtb	r3, r3
 8000fc0:	1c18      	adds	r0, r3, #0
 8000fc2:	46bd      	mov	sp, r7
 8000fc4:	bd80      	pop	{r7, pc}
 8000fc6:	46c0      	nop			; (mov r8, r8)
 8000fc8:	40021000 	.word	0x40021000

08000fcc <LL_RCC_PLL_ConfigDomain_SYS>:
 8000fcc:	b580      	push	{r7, lr}
 8000fce:	b082      	sub	sp, #8
 8000fd0:	af00      	add	r7, sp, #0
 8000fd2:	6078      	str	r0, [r7, #4]
 8000fd4:	6039      	str	r1, [r7, #0]
 8000fd6:	4b0d      	ldr	r3, [pc, #52]	; (800100c <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000fd8:	4a0c      	ldr	r2, [pc, #48]	; (800100c <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000fda:	6852      	ldr	r2, [r2, #4]
 8000fdc:	490c      	ldr	r1, [pc, #48]	; (8001010 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000fde:	4011      	ands	r1, r2
 8000fe0:	6878      	ldr	r0, [r7, #4]
 8000fe2:	2280      	movs	r2, #128	; 0x80
 8000fe4:	0252      	lsls	r2, r2, #9
 8000fe6:	4010      	ands	r0, r2
 8000fe8:	683a      	ldr	r2, [r7, #0]
 8000fea:	4302      	orrs	r2, r0
 8000fec:	430a      	orrs	r2, r1
 8000fee:	605a      	str	r2, [r3, #4]
 8000ff0:	4b06      	ldr	r3, [pc, #24]	; (800100c <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000ff2:	4a06      	ldr	r2, [pc, #24]	; (800100c <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000ff4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8000ff6:	210f      	movs	r1, #15
 8000ff8:	438a      	bics	r2, r1
 8000ffa:	1c11      	adds	r1, r2, #0
 8000ffc:	687a      	ldr	r2, [r7, #4]
 8000ffe:	200f      	movs	r0, #15
 8001000:	4002      	ands	r2, r0
 8001002:	430a      	orrs	r2, r1
 8001004:	62da      	str	r2, [r3, #44]	; 0x2c
 8001006:	46bd      	mov	sp, r7
 8001008:	b002      	add	sp, #8
 800100a:	bd80      	pop	{r7, pc}
 800100c:	40021000 	.word	0x40021000
 8001010:	ffc2ffff 	.word	0xffc2ffff

08001014 <LL_SYSCFG_SetEXTISource>:
 8001014:	b590      	push	{r4, r7, lr}
 8001016:	b083      	sub	sp, #12
 8001018:	af00      	add	r7, sp, #0
 800101a:	6078      	str	r0, [r7, #4]
 800101c:	6039      	str	r1, [r7, #0]
 800101e:	480f      	ldr	r0, [pc, #60]	; (800105c <LL_SYSCFG_SetEXTISource+0x48>)
 8001020:	683b      	ldr	r3, [r7, #0]
 8001022:	22ff      	movs	r2, #255	; 0xff
 8001024:	4013      	ands	r3, r2
 8001026:	490d      	ldr	r1, [pc, #52]	; (800105c <LL_SYSCFG_SetEXTISource+0x48>)
 8001028:	683a      	ldr	r2, [r7, #0]
 800102a:	24ff      	movs	r4, #255	; 0xff
 800102c:	4022      	ands	r2, r4
 800102e:	3202      	adds	r2, #2
 8001030:	0092      	lsls	r2, r2, #2
 8001032:	5852      	ldr	r2, [r2, r1]
 8001034:	6839      	ldr	r1, [r7, #0]
 8001036:	0c09      	lsrs	r1, r1, #16
 8001038:	1c0c      	adds	r4, r1, #0
 800103a:	210f      	movs	r1, #15
 800103c:	40a1      	lsls	r1, r4
 800103e:	43c9      	mvns	r1, r1
 8001040:	4011      	ands	r1, r2
 8001042:	683a      	ldr	r2, [r7, #0]
 8001044:	0c12      	lsrs	r2, r2, #16
 8001046:	1c14      	adds	r4, r2, #0
 8001048:	687a      	ldr	r2, [r7, #4]
 800104a:	40a2      	lsls	r2, r4
 800104c:	430a      	orrs	r2, r1
 800104e:	3302      	adds	r3, #2
 8001050:	009b      	lsls	r3, r3, #2
 8001052:	501a      	str	r2, [r3, r0]
 8001054:	46bd      	mov	sp, r7
 8001056:	b003      	add	sp, #12
 8001058:	bd90      	pop	{r4, r7, pc}
 800105a:	46c0      	nop			; (mov r8, r8)
 800105c:	40010000 	.word	0x40010000

08001060 <LL_FLASH_SetLatency>:
 8001060:	b580      	push	{r7, lr}
 8001062:	b082      	sub	sp, #8
 8001064:	af00      	add	r7, sp, #0
 8001066:	6078      	str	r0, [r7, #4]
 8001068:	4b05      	ldr	r3, [pc, #20]	; (8001080 <LL_FLASH_SetLatency+0x20>)
 800106a:	4a05      	ldr	r2, [pc, #20]	; (8001080 <LL_FLASH_SetLatency+0x20>)
 800106c:	6812      	ldr	r2, [r2, #0]
 800106e:	2101      	movs	r1, #1
 8001070:	438a      	bics	r2, r1
 8001072:	1c11      	adds	r1, r2, #0
 8001074:	687a      	ldr	r2, [r7, #4]
 8001076:	430a      	orrs	r2, r1
 8001078:	601a      	str	r2, [r3, #0]
 800107a:	46bd      	mov	sp, r7
 800107c:	b002      	add	sp, #8
 800107e:	bd80      	pop	{r7, pc}
 8001080:	40022000 	.word	0x40022000

08001084 <LL_EXTI_EnableIT_0_31>:
 8001084:	b580      	push	{r7, lr}
 8001086:	b082      	sub	sp, #8
 8001088:	af00      	add	r7, sp, #0
 800108a:	6078      	str	r0, [r7, #4]
 800108c:	4b04      	ldr	r3, [pc, #16]	; (80010a0 <LL_EXTI_EnableIT_0_31+0x1c>)
 800108e:	4a04      	ldr	r2, [pc, #16]	; (80010a0 <LL_EXTI_EnableIT_0_31+0x1c>)
 8001090:	6811      	ldr	r1, [r2, #0]
 8001092:	687a      	ldr	r2, [r7, #4]
 8001094:	430a      	orrs	r2, r1
 8001096:	601a      	str	r2, [r3, #0]
 8001098:	46bd      	mov	sp, r7
 800109a:	b002      	add	sp, #8
 800109c:	bd80      	pop	{r7, pc}
 800109e:	46c0      	nop			; (mov r8, r8)
 80010a0:	40010400 	.word	0x40010400

080010a4 <LL_EXTI_EnableFallingTrig_0_31>:
 80010a4:	b580      	push	{r7, lr}
 80010a6:	b082      	sub	sp, #8
 80010a8:	af00      	add	r7, sp, #0
 80010aa:	6078      	str	r0, [r7, #4]
 80010ac:	4b04      	ldr	r3, [pc, #16]	; (80010c0 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80010ae:	4a04      	ldr	r2, [pc, #16]	; (80010c0 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80010b0:	68d1      	ldr	r1, [r2, #12]
 80010b2:	687a      	ldr	r2, [r7, #4]
 80010b4:	430a      	orrs	r2, r1
 80010b6:	60da      	str	r2, [r3, #12]
 80010b8:	46bd      	mov	sp, r7
 80010ba:	b002      	add	sp, #8
 80010bc:	bd80      	pop	{r7, pc}
 80010be:	46c0      	nop			; (mov r8, r8)
 80010c0:	40010400 	.word	0x40010400

080010c4 <LL_EXTI_IsActiveFlag_0_31>:
 80010c4:	b580      	push	{r7, lr}
 80010c6:	b082      	sub	sp, #8
 80010c8:	af00      	add	r7, sp, #0
 80010ca:	6078      	str	r0, [r7, #4]
 80010cc:	4b06      	ldr	r3, [pc, #24]	; (80010e8 <LL_EXTI_IsActiveFlag_0_31+0x24>)
 80010ce:	695b      	ldr	r3, [r3, #20]
 80010d0:	687a      	ldr	r2, [r7, #4]
 80010d2:	401a      	ands	r2, r3
 80010d4:	687b      	ldr	r3, [r7, #4]
 80010d6:	1ad3      	subs	r3, r2, r3
 80010d8:	425a      	negs	r2, r3
 80010da:	4153      	adcs	r3, r2
 80010dc:	b2db      	uxtb	r3, r3
 80010de:	1c18      	adds	r0, r3, #0
 80010e0:	46bd      	mov	sp, r7
 80010e2:	b002      	add	sp, #8
 80010e4:	bd80      	pop	{r7, pc}
 80010e6:	46c0      	nop			; (mov r8, r8)
 80010e8:	40010400 	.word	0x40010400

080010ec <LL_EXTI_ClearFlag_0_31>:
 80010ec:	b580      	push	{r7, lr}
 80010ee:	b082      	sub	sp, #8
 80010f0:	af00      	add	r7, sp, #0
 80010f2:	6078      	str	r0, [r7, #4]
 80010f4:	4b02      	ldr	r3, [pc, #8]	; (8001100 <LL_EXTI_ClearFlag_0_31+0x14>)
 80010f6:	687a      	ldr	r2, [r7, #4]
 80010f8:	615a      	str	r2, [r3, #20]
 80010fa:	46bd      	mov	sp, r7
 80010fc:	b002      	add	sp, #8
 80010fe:	bd80      	pop	{r7, pc}
 8001100:	40010400 	.word	0x40010400

08001104 <LL_TIM_EnableCounter>:
 8001104:	b580      	push	{r7, lr}
 8001106:	b082      	sub	sp, #8
 8001108:	af00      	add	r7, sp, #0
 800110a:	6078      	str	r0, [r7, #4]
 800110c:	687b      	ldr	r3, [r7, #4]
 800110e:	681b      	ldr	r3, [r3, #0]
 8001110:	2201      	movs	r2, #1
 8001112:	431a      	orrs	r2, r3
 8001114:	687b      	ldr	r3, [r7, #4]
 8001116:	601a      	str	r2, [r3, #0]
 8001118:	46bd      	mov	sp, r7
 800111a:	b002      	add	sp, #8
 800111c:	bd80      	pop	{r7, pc}
 800111e:	46c0      	nop			; (mov r8, r8)

08001120 <LL_TIM_GetAutoReload>:
 8001120:	b580      	push	{r7, lr}
 8001122:	b082      	sub	sp, #8
 8001124:	af00      	add	r7, sp, #0
 8001126:	6078      	str	r0, [r7, #4]
 8001128:	687b      	ldr	r3, [r7, #4]
 800112a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800112c:	1c18      	adds	r0, r3, #0
 800112e:	46bd      	mov	sp, r7
 8001130:	b002      	add	sp, #8
 8001132:	bd80      	pop	{r7, pc}

08001134 <logic_motor>:
 8001134:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001136:	b08f      	sub	sp, #60	; 0x3c
 8001138:	af00      	add	r7, sp, #0
 800113a:	60f8      	str	r0, [r7, #12]
 800113c:	60b9      	str	r1, [r7, #8]
 800113e:	607a      	str	r2, [r7, #4]
 8001140:	2300      	movs	r3, #0
 8001142:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001144:	e019      	b.n	800117a <logic_motor+0x46>
 8001146:	68bb      	ldr	r3, [r7, #8]
 8001148:	681a      	ldr	r2, [r3, #0]
 800114a:	68bb      	ldr	r3, [r7, #8]
 800114c:	685b      	ldr	r3, [r3, #4]
 800114e:	1ad3      	subs	r3, r2, r3
 8001150:	62bb      	str	r3, [r7, #40]	; 0x28
 8001152:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001154:	2b00      	cmp	r3, #0
 8001156:	dd03      	ble.n	8001160 <logic_motor+0x2c>
 8001158:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800115a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800115c:	18d3      	adds	r3, r2, r3
 800115e:	637b      	str	r3, [r7, #52]	; 0x34
 8001160:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001162:	2b00      	cmp	r3, #0
 8001164:	da03      	bge.n	800116e <logic_motor+0x3a>
 8001166:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8001168:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800116a:	1ad3      	subs	r3, r2, r3
 800116c:	633b      	str	r3, [r7, #48]	; 0x30
 800116e:	68bb      	ldr	r3, [r7, #8]
 8001170:	3308      	adds	r3, #8
 8001172:	60bb      	str	r3, [r7, #8]
 8001174:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001176:	3301      	adds	r3, #1
 8001178:	62fb      	str	r3, [r7, #44]	; 0x2c
 800117a:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 800117c:	687b      	ldr	r3, [r7, #4]
 800117e:	429a      	cmp	r2, r3
 8001180:	dbe1      	blt.n	8001146 <logic_motor+0x12>
 8001182:	6b78      	ldr	r0, [r7, #52]	; 0x34
 8001184:	f7ff fd04 	bl	8000b90 <__aeabi_i2d>
 8001188:	1c05      	adds	r5, r0, #0
 800118a:	1c0e      	adds	r6, r1, #0
 800118c:	6878      	ldr	r0, [r7, #4]
 800118e:	f7ff fcff 	bl	8000b90 <__aeabi_i2d>
 8001192:	1c03      	adds	r3, r0, #0
 8001194:	1c0c      	adds	r4, r1, #0
 8001196:	1c28      	adds	r0, r5, #0
 8001198:	1c31      	adds	r1, r6, #0
 800119a:	1c1a      	adds	r2, r3, #0
 800119c:	1c23      	adds	r3, r4, #0
 800119e:	f7ff f8b9 	bl	8000314 <__aeabi_ddiv>
 80011a2:	1c03      	adds	r3, r0, #0
 80011a4:	1c0c      	adds	r4, r1, #0
 80011a6:	623b      	str	r3, [r7, #32]
 80011a8:	627c      	str	r4, [r7, #36]	; 0x24
 80011aa:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80011ac:	f7ff fcf0 	bl	8000b90 <__aeabi_i2d>
 80011b0:	1c05      	adds	r5, r0, #0
 80011b2:	1c0e      	adds	r6, r1, #0
 80011b4:	6878      	ldr	r0, [r7, #4]
 80011b6:	f7ff fceb 	bl	8000b90 <__aeabi_i2d>
 80011ba:	1c03      	adds	r3, r0, #0
 80011bc:	1c0c      	adds	r4, r1, #0
 80011be:	1c28      	adds	r0, r5, #0
 80011c0:	1c31      	adds	r1, r6, #0
 80011c2:	1c1a      	adds	r2, r3, #0
 80011c4:	1c23      	adds	r3, r4, #0
 80011c6:	f7ff f8a5 	bl	8000314 <__aeabi_ddiv>
 80011ca:	1c03      	adds	r3, r0, #0
 80011cc:	1c0c      	adds	r4, r1, #0
 80011ce:	61bb      	str	r3, [r7, #24]
 80011d0:	61fc      	str	r4, [r7, #28]
 80011d2:	2310      	movs	r3, #16
 80011d4:	18fb      	adds	r3, r7, r3
 80011d6:	2200      	movs	r2, #0
 80011d8:	601a      	str	r2, [r3, #0]
 80011da:	2310      	movs	r3, #16
 80011dc:	18fb      	adds	r3, r7, r3
 80011de:	2200      	movs	r2, #0
 80011e0:	605a      	str	r2, [r3, #4]
 80011e2:	6a38      	ldr	r0, [r7, #32]
 80011e4:	6a79      	ldr	r1, [r7, #36]	; 0x24
 80011e6:	2200      	movs	r2, #0
 80011e8:	2300      	movs	r3, #0
 80011ea:	f7ff f87f 	bl	80002ec <__aeabi_dcmpgt>
 80011ee:	1e03      	subs	r3, r0, #0
 80011f0:	d00c      	beq.n	800120c <logic_motor+0xd8>
 80011f2:	6a38      	ldr	r0, [r7, #32]
 80011f4:	6a79      	ldr	r1, [r7, #36]	; 0x24
 80011f6:	2200      	movs	r2, #0
 80011f8:	2380      	movs	r3, #128	; 0x80
 80011fa:	05db      	lsls	r3, r3, #23
 80011fc:	f7ff f86c 	bl	80002d8 <__aeabi_dcmple>
 8001200:	1e03      	subs	r3, r0, #0
 8001202:	d003      	beq.n	800120c <logic_motor+0xd8>
 8001204:	2310      	movs	r3, #16
 8001206:	18fb      	adds	r3, r7, r3
 8001208:	221e      	movs	r2, #30
 800120a:	601a      	str	r2, [r3, #0]
 800120c:	6a38      	ldr	r0, [r7, #32]
 800120e:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8001210:	2200      	movs	r2, #0
 8001212:	2380      	movs	r3, #128	; 0x80
 8001214:	05db      	lsls	r3, r3, #23
 8001216:	f7ff f869 	bl	80002ec <__aeabi_dcmpgt>
 800121a:	1e03      	subs	r3, r0, #0
 800121c:	d00b      	beq.n	8001236 <logic_motor+0x102>
 800121e:	6a38      	ldr	r0, [r7, #32]
 8001220:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8001222:	2200      	movs	r2, #0
 8001224:	4b3d      	ldr	r3, [pc, #244]	; (800131c <logic_motor+0x1e8>)
 8001226:	f7ff f857 	bl	80002d8 <__aeabi_dcmple>
 800122a:	1e03      	subs	r3, r0, #0
 800122c:	d003      	beq.n	8001236 <logic_motor+0x102>
 800122e:	2310      	movs	r3, #16
 8001230:	18fb      	adds	r3, r7, r3
 8001232:	2232      	movs	r2, #50	; 0x32
 8001234:	601a      	str	r2, [r3, #0]
 8001236:	6a38      	ldr	r0, [r7, #32]
 8001238:	6a79      	ldr	r1, [r7, #36]	; 0x24
 800123a:	2200      	movs	r2, #0
 800123c:	4b37      	ldr	r3, [pc, #220]	; (800131c <logic_motor+0x1e8>)
 800123e:	f7ff f855 	bl	80002ec <__aeabi_dcmpgt>
 8001242:	1e03      	subs	r3, r0, #0
 8001244:	d00b      	beq.n	800125e <logic_motor+0x12a>
 8001246:	6a38      	ldr	r0, [r7, #32]
 8001248:	6a79      	ldr	r1, [r7, #36]	; 0x24
 800124a:	2200      	movs	r2, #0
 800124c:	4b34      	ldr	r3, [pc, #208]	; (8001320 <logic_motor+0x1ec>)
 800124e:	f7ff f843 	bl	80002d8 <__aeabi_dcmple>
 8001252:	1e03      	subs	r3, r0, #0
 8001254:	d003      	beq.n	800125e <logic_motor+0x12a>
 8001256:	2310      	movs	r3, #16
 8001258:	18fb      	adds	r3, r7, r3
 800125a:	2246      	movs	r2, #70	; 0x46
 800125c:	601a      	str	r2, [r3, #0]
 800125e:	6a38      	ldr	r0, [r7, #32]
 8001260:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8001262:	2200      	movs	r2, #0
 8001264:	4b2e      	ldr	r3, [pc, #184]	; (8001320 <logic_motor+0x1ec>)
 8001266:	f7ff f841 	bl	80002ec <__aeabi_dcmpgt>
 800126a:	1e03      	subs	r3, r0, #0
 800126c:	d003      	beq.n	8001276 <logic_motor+0x142>
 800126e:	2310      	movs	r3, #16
 8001270:	18fb      	adds	r3, r7, r3
 8001272:	225a      	movs	r2, #90	; 0x5a
 8001274:	601a      	str	r2, [r3, #0]
 8001276:	69b8      	ldr	r0, [r7, #24]
 8001278:	69f9      	ldr	r1, [r7, #28]
 800127a:	2200      	movs	r2, #0
 800127c:	2300      	movs	r3, #0
 800127e:	f7ff f835 	bl	80002ec <__aeabi_dcmpgt>
 8001282:	1e03      	subs	r3, r0, #0
 8001284:	d00c      	beq.n	80012a0 <logic_motor+0x16c>
 8001286:	69b8      	ldr	r0, [r7, #24]
 8001288:	69f9      	ldr	r1, [r7, #28]
 800128a:	2200      	movs	r2, #0
 800128c:	2380      	movs	r3, #128	; 0x80
 800128e:	05db      	lsls	r3, r3, #23
 8001290:	f7ff f822 	bl	80002d8 <__aeabi_dcmple>
 8001294:	1e03      	subs	r3, r0, #0
 8001296:	d003      	beq.n	80012a0 <logic_motor+0x16c>
 8001298:	2310      	movs	r3, #16
 800129a:	18fb      	adds	r3, r7, r3
 800129c:	221e      	movs	r2, #30
 800129e:	605a      	str	r2, [r3, #4]
 80012a0:	69b8      	ldr	r0, [r7, #24]
 80012a2:	69f9      	ldr	r1, [r7, #28]
 80012a4:	2200      	movs	r2, #0
 80012a6:	2380      	movs	r3, #128	; 0x80
 80012a8:	05db      	lsls	r3, r3, #23
 80012aa:	f7ff f81f 	bl	80002ec <__aeabi_dcmpgt>
 80012ae:	1e03      	subs	r3, r0, #0
 80012b0:	d00b      	beq.n	80012ca <logic_motor+0x196>
 80012b2:	69b8      	ldr	r0, [r7, #24]
 80012b4:	69f9      	ldr	r1, [r7, #28]
 80012b6:	2200      	movs	r2, #0
 80012b8:	4b18      	ldr	r3, [pc, #96]	; (800131c <logic_motor+0x1e8>)
 80012ba:	f7ff f80d 	bl	80002d8 <__aeabi_dcmple>
 80012be:	1e03      	subs	r3, r0, #0
 80012c0:	d003      	beq.n	80012ca <logic_motor+0x196>
 80012c2:	2310      	movs	r3, #16
 80012c4:	18fb      	adds	r3, r7, r3
 80012c6:	2232      	movs	r2, #50	; 0x32
 80012c8:	605a      	str	r2, [r3, #4]
 80012ca:	69b8      	ldr	r0, [r7, #24]
 80012cc:	69f9      	ldr	r1, [r7, #28]
 80012ce:	2200      	movs	r2, #0
 80012d0:	4b12      	ldr	r3, [pc, #72]	; (800131c <logic_motor+0x1e8>)
 80012d2:	f7ff f80b 	bl	80002ec <__aeabi_dcmpgt>
 80012d6:	1e03      	subs	r3, r0, #0
 80012d8:	d00b      	beq.n	80012f2 <logic_motor+0x1be>
 80012da:	69b8      	ldr	r0, [r7, #24]
 80012dc:	69f9      	ldr	r1, [r7, #28]
 80012de:	2200      	movs	r2, #0
 80012e0:	4b0f      	ldr	r3, [pc, #60]	; (8001320 <logic_motor+0x1ec>)
 80012e2:	f7fe fff9 	bl	80002d8 <__aeabi_dcmple>
 80012e6:	1e03      	subs	r3, r0, #0
 80012e8:	d003      	beq.n	80012f2 <logic_motor+0x1be>
 80012ea:	2310      	movs	r3, #16
 80012ec:	18fb      	adds	r3, r7, r3
 80012ee:	2246      	movs	r2, #70	; 0x46
 80012f0:	605a      	str	r2, [r3, #4]
 80012f2:	69b8      	ldr	r0, [r7, #24]
 80012f4:	69f9      	ldr	r1, [r7, #28]
 80012f6:	2200      	movs	r2, #0
 80012f8:	4b09      	ldr	r3, [pc, #36]	; (8001320 <logic_motor+0x1ec>)
 80012fa:	f7fe fff7 	bl	80002ec <__aeabi_dcmpgt>
 80012fe:	1e03      	subs	r3, r0, #0
 8001300:	d003      	beq.n	800130a <logic_motor+0x1d6>
 8001302:	2310      	movs	r3, #16
 8001304:	18fb      	adds	r3, r7, r3
 8001306:	225a      	movs	r2, #90	; 0x5a
 8001308:	605a      	str	r2, [r3, #4]
 800130a:	68fb      	ldr	r3, [r7, #12]
 800130c:	2210      	movs	r2, #16
 800130e:	18ba      	adds	r2, r7, r2
 8001310:	ca03      	ldmia	r2!, {r0, r1}
 8001312:	c303      	stmia	r3!, {r0, r1}
 8001314:	68f8      	ldr	r0, [r7, #12]
 8001316:	46bd      	mov	sp, r7
 8001318:	b00f      	add	sp, #60	; 0x3c
 800131a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800131c:	40140000 	.word	0x40140000
 8001320:	40200000 	.word	0x40200000

08001324 <pwm_motor_init>:
 8001324:	b590      	push	{r4, r7, lr}
 8001326:	b095      	sub	sp, #84	; 0x54
 8001328:	af00      	add	r7, sp, #0
 800132a:	60f8      	str	r0, [r7, #12]
 800132c:	60b9      	str	r1, [r7, #8]
 800132e:	607a      	str	r2, [r7, #4]
 8001330:	603b      	str	r3, [r7, #0]
 8001332:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 8001334:	2b00      	cmp	r3, #0
 8001336:	d005      	beq.n	8001344 <pwm_motor_init+0x20>
 8001338:	2380      	movs	r3, #128	; 0x80
 800133a:	031b      	lsls	r3, r3, #12
 800133c:	1c18      	adds	r0, r3, #0
 800133e:	f7ff fd4f 	bl	8000de0 <LL_AHB1_GRP1_EnableClock>
 8001342:	e004      	b.n	800134e <pwm_motor_init+0x2a>
 8001344:	2380      	movs	r3, #128	; 0x80
 8001346:	02db      	lsls	r3, r3, #11
 8001348:	1c18      	adds	r0, r3, #0
 800134a:	f7ff fd49 	bl	8000de0 <LL_AHB1_GRP1_EnableClock>
 800134e:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 8001350:	1c18      	adds	r0, r3, #0
 8001352:	f7ff fd5b 	bl	8000e0c <LL_APB1_GRP1_EnableClock>
 8001356:	68ba      	ldr	r2, [r7, #8]
 8001358:	687b      	ldr	r3, [r7, #4]
 800135a:	1c10      	adds	r0, r2, #0
 800135c:	1c19      	adds	r1, r3, #0
 800135e:	2202      	movs	r2, #2
 8001360:	f7ff fd80 	bl	8000e64 <LL_GPIO_SetPinMode>
 8001364:	68ba      	ldr	r2, [r7, #8]
 8001366:	687b      	ldr	r3, [r7, #4]
 8001368:	1c10      	adds	r0, r2, #0
 800136a:	1c19      	adds	r1, r3, #0
 800136c:	2202      	movs	r2, #2
 800136e:	f7ff fd95 	bl	8000e9c <LL_GPIO_SetPinPull>
 8001372:	2364      	movs	r3, #100	; 0x64
 8001374:	64fb      	str	r3, [r7, #76]	; 0x4c
 8001376:	4b3d      	ldr	r3, [pc, #244]	; (800146c <pwm_motor_init+0x148>)
 8001378:	64bb      	str	r3, [r7, #72]	; 0x48
 800137a:	2314      	movs	r3, #20
 800137c:	18fb      	adds	r3, r7, r3
 800137e:	1c18      	adds	r0, r3, #0
 8001380:	f000 fac2 	bl	8001908 <LL_TIM_StructInit>
 8001384:	2314      	movs	r3, #20
 8001386:	18fb      	adds	r3, r7, r3
 8001388:	2200      	movs	r2, #0
 800138a:	60da      	str	r2, [r3, #12]
 800138c:	4b38      	ldr	r3, [pc, #224]	; (8001470 <pwm_motor_init+0x14c>)
 800138e:	681a      	ldr	r2, [r3, #0]
 8001390:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8001392:	429a      	cmp	r2, r3
 8001394:	d30a      	bcc.n	80013ac <pwm_motor_init+0x88>
 8001396:	4b36      	ldr	r3, [pc, #216]	; (8001470 <pwm_motor_init+0x14c>)
 8001398:	681b      	ldr	r3, [r3, #0]
 800139a:	1c18      	adds	r0, r3, #0
 800139c:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 800139e:	f7fe fee9 	bl	8000174 <__aeabi_uidiv>
 80013a2:	1c03      	adds	r3, r0, #0
 80013a4:	b29b      	uxth	r3, r3
 80013a6:	3b01      	subs	r3, #1
 80013a8:	b29a      	uxth	r2, r3
 80013aa:	e000      	b.n	80013ae <pwm_motor_init+0x8a>
 80013ac:	2200      	movs	r2, #0
 80013ae:	2314      	movs	r3, #20
 80013b0:	18fb      	adds	r3, r7, r3
 80013b2:	801a      	strh	r2, [r3, #0]
 80013b4:	4b2e      	ldr	r3, [pc, #184]	; (8001470 <pwm_motor_init+0x14c>)
 80013b6:	681a      	ldr	r2, [r3, #0]
 80013b8:	2314      	movs	r3, #20
 80013ba:	18fb      	adds	r3, r7, r3
 80013bc:	881b      	ldrh	r3, [r3, #0]
 80013be:	3301      	adds	r3, #1
 80013c0:	1c10      	adds	r0, r2, #0
 80013c2:	1c19      	adds	r1, r3, #0
 80013c4:	f7fe fed6 	bl	8000174 <__aeabi_uidiv>
 80013c8:	1c03      	adds	r3, r0, #0
 80013ca:	1e1a      	subs	r2, r3, #0
 80013cc:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80013ce:	429a      	cmp	r2, r3
 80013d0:	d30e      	bcc.n	80013f0 <pwm_motor_init+0xcc>
 80013d2:	4b27      	ldr	r3, [pc, #156]	; (8001470 <pwm_motor_init+0x14c>)
 80013d4:	6819      	ldr	r1, [r3, #0]
 80013d6:	2314      	movs	r3, #20
 80013d8:	18fb      	adds	r3, r7, r3
 80013da:	881b      	ldrh	r3, [r3, #0]
 80013dc:	3301      	adds	r3, #1
 80013de:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80013e0:	4353      	muls	r3, r2
 80013e2:	1c08      	adds	r0, r1, #0
 80013e4:	1c19      	adds	r1, r3, #0
 80013e6:	f7fe fec5 	bl	8000174 <__aeabi_uidiv>
 80013ea:	1c03      	adds	r3, r0, #0
 80013ec:	1e5a      	subs	r2, r3, #1
 80013ee:	e000      	b.n	80013f2 <pwm_motor_init+0xce>
 80013f0:	2200      	movs	r2, #0
 80013f2:	2314      	movs	r3, #20
 80013f4:	18fb      	adds	r3, r7, r3
 80013f6:	609a      	str	r2, [r3, #8]
 80013f8:	2314      	movs	r3, #20
 80013fa:	18fb      	adds	r3, r7, r3
 80013fc:	2200      	movs	r2, #0
 80013fe:	605a      	str	r2, [r3, #4]
 8001400:	683a      	ldr	r2, [r7, #0]
 8001402:	2314      	movs	r3, #20
 8001404:	18fb      	adds	r3, r7, r3
 8001406:	1c10      	adds	r0, r2, #0
 8001408:	1c19      	adds	r1, r3, #0
 800140a:	f000 fa95 	bl	8001938 <LL_TIM_Init>
 800140e:	2328      	movs	r3, #40	; 0x28
 8001410:	18fb      	adds	r3, r7, r3
 8001412:	1c18      	adds	r0, r3, #0
 8001414:	f000 fb14 	bl	8001a40 <LL_TIM_OC_StructInit>
 8001418:	2328      	movs	r3, #40	; 0x28
 800141a:	18fb      	adds	r3, r7, r3
 800141c:	2260      	movs	r2, #96	; 0x60
 800141e:	601a      	str	r2, [r3, #0]
 8001420:	2328      	movs	r3, #40	; 0x28
 8001422:	18fb      	adds	r3, r7, r3
 8001424:	2201      	movs	r2, #1
 8001426:	605a      	str	r2, [r3, #4]
 8001428:	2328      	movs	r3, #40	; 0x28
 800142a:	18fb      	adds	r3, r7, r3
 800142c:	2200      	movs	r2, #0
 800142e:	611a      	str	r2, [r3, #16]
 8001430:	2328      	movs	r3, #40	; 0x28
 8001432:	18fb      	adds	r3, r7, r3
 8001434:	2200      	movs	r2, #0
 8001436:	60da      	str	r2, [r3, #12]
 8001438:	6839      	ldr	r1, [r7, #0]
 800143a:	6e7a      	ldr	r2, [r7, #100]	; 0x64
 800143c:	2328      	movs	r3, #40	; 0x28
 800143e:	18fb      	adds	r3, r7, r3
 8001440:	1c08      	adds	r0, r1, #0
 8001442:	1c11      	adds	r1, r2, #0
 8001444:	1c1a      	adds	r2, r3, #0
 8001446:	f000 fb1b 	bl	8001a80 <LL_TIM_OC_Init>
 800144a:	683b      	ldr	r3, [r7, #0]
 800144c:	1c18      	adds	r0, r3, #0
 800144e:	f7ff fe59 	bl	8001104 <LL_TIM_EnableCounter>
 8001452:	68fb      	ldr	r3, [r7, #12]
 8001454:	2228      	movs	r2, #40	; 0x28
 8001456:	18ba      	adds	r2, r7, r2
 8001458:	ca13      	ldmia	r2!, {r0, r1, r4}
 800145a:	c313      	stmia	r3!, {r0, r1, r4}
 800145c:	ca13      	ldmia	r2!, {r0, r1, r4}
 800145e:	c313      	stmia	r3!, {r0, r1, r4}
 8001460:	ca03      	ldmia	r2!, {r0, r1}
 8001462:	c303      	stmia	r3!, {r0, r1}
 8001464:	68f8      	ldr	r0, [r7, #12]
 8001466:	46bd      	mov	sp, r7
 8001468:	b015      	add	sp, #84	; 0x54
 800146a:	bd90      	pop	{r4, r7, pc}
 800146c:	00002710 	.word	0x00002710
 8001470:	20000000 	.word	0x20000000

08001474 <pwm_motor_set>:
 8001474:	b084      	sub	sp, #16
 8001476:	b598      	push	{r3, r4, r7, lr}
 8001478:	af00      	add	r7, sp, #0
 800147a:	2410      	movs	r4, #16
 800147c:	193c      	adds	r4, r7, r4
 800147e:	6020      	str	r0, [r4, #0]
 8001480:	6061      	str	r1, [r4, #4]
 8001482:	60a2      	str	r2, [r4, #8]
 8001484:	60e3      	str	r3, [r4, #12]
 8001486:	4b11      	ldr	r3, [pc, #68]	; (80014cc <pwm_motor_set+0x58>)
 8001488:	1c18      	adds	r0, r3, #0
 800148a:	f7ff fe49 	bl	8001120 <LL_TIM_GetAutoReload>
 800148e:	1c03      	adds	r3, r0, #0
 8001490:	3301      	adds	r3, #1
 8001492:	1c18      	adds	r0, r3, #0
 8001494:	2164      	movs	r1, #100	; 0x64
 8001496:	f7fe fe6d 	bl	8000174 <__aeabi_uidiv>
 800149a:	1c03      	adds	r3, r0, #0
 800149c:	1c1a      	adds	r2, r3, #0
 800149e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 80014a0:	435a      	muls	r2, r3
 80014a2:	2310      	movs	r3, #16
 80014a4:	18fb      	adds	r3, r7, r3
 80014a6:	60da      	str	r2, [r3, #12]
 80014a8:	4a08      	ldr	r2, [pc, #32]	; (80014cc <pwm_motor_set+0x58>)
 80014aa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80014ac:	2110      	movs	r1, #16
 80014ae:	187c      	adds	r4, r7, r1
 80014b0:	1c10      	adds	r0, r2, #0
 80014b2:	1c19      	adds	r1, r3, #0
 80014b4:	1c22      	adds	r2, r4, #0
 80014b6:	f000 fae3 	bl	8001a80 <LL_TIM_OC_Init>
 80014ba:	4b04      	ldr	r3, [pc, #16]	; (80014cc <pwm_motor_set+0x58>)
 80014bc:	1c18      	adds	r0, r3, #0
 80014be:	f7ff fe21 	bl	8001104 <LL_TIM_EnableCounter>
 80014c2:	46bd      	mov	sp, r7
 80014c4:	bc98      	pop	{r3, r4, r7}
 80014c6:	bc08      	pop	{r3}
 80014c8:	b004      	add	sp, #16
 80014ca:	4718      	bx	r3
 80014cc:	40000400 	.word	0x40000400

080014d0 <rcc_init>:
 80014d0:	b580      	push	{r7, lr}
 80014d2:	af00      	add	r7, sp, #0
 80014d4:	2001      	movs	r0, #1
 80014d6:	f7ff fdc3 	bl	8001060 <LL_FLASH_SetLatency>
 80014da:	f7ff fcfb 	bl	8000ed4 <LL_RCC_HSI_Enable>
 80014de:	46c0      	nop			; (mov r8, r8)
 80014e0:	f7ff fd04 	bl	8000eec <LL_RCC_HSI_IsReady>
 80014e4:	1e03      	subs	r3, r0, #0
 80014e6:	2b01      	cmp	r3, #1
 80014e8:	d1fa      	bne.n	80014e0 <rcc_init+0x10>
 80014ea:	23a0      	movs	r3, #160	; 0xa0
 80014ec:	039b      	lsls	r3, r3, #14
 80014ee:	2000      	movs	r0, #0
 80014f0:	1c19      	adds	r1, r3, #0
 80014f2:	f7ff fd6b 	bl	8000fcc <LL_RCC_PLL_ConfigDomain_SYS>
 80014f6:	f7ff fd4b 	bl	8000f90 <LL_RCC_PLL_Enable>
 80014fa:	46c0      	nop			; (mov r8, r8)
 80014fc:	f7ff fd56 	bl	8000fac <LL_RCC_PLL_IsReady>
 8001500:	1e03      	subs	r3, r0, #0
 8001502:	2b01      	cmp	r3, #1
 8001504:	d1fa      	bne.n	80014fc <rcc_init+0x2c>
 8001506:	2000      	movs	r0, #0
 8001508:	f7ff fd1c 	bl	8000f44 <LL_RCC_SetAHBPrescaler>
 800150c:	2002      	movs	r0, #2
 800150e:	f7ff fcfb 	bl	8000f08 <LL_RCC_SetSysClkSource>
 8001512:	46c0      	nop			; (mov r8, r8)
 8001514:	f7ff fd0a 	bl	8000f2c <LL_RCC_GetSysClkSource>
 8001518:	1e03      	subs	r3, r0, #0
 800151a:	2b08      	cmp	r3, #8
 800151c:	d1fa      	bne.n	8001514 <rcc_init+0x44>
 800151e:	2000      	movs	r0, #0
 8001520:	f7ff fd22 	bl	8000f68 <LL_RCC_SetAPB1Prescaler>
 8001524:	4b04      	ldr	r3, [pc, #16]	; (8001538 <rcc_init+0x68>)
 8001526:	1c18      	adds	r0, r3, #0
 8001528:	f7ff fc36 	bl	8000d98 <SysTick_Config>
 800152c:	4b03      	ldr	r3, [pc, #12]	; (800153c <rcc_init+0x6c>)
 800152e:	4a04      	ldr	r2, [pc, #16]	; (8001540 <rcc_init+0x70>)
 8001530:	601a      	str	r2, [r3, #0]
 8001532:	46bd      	mov	sp, r7
 8001534:	bd80      	pop	{r7, pc}
 8001536:	46c0      	nop			; (mov r8, r8)
 8001538:	0000bb80 	.word	0x0000bb80
 800153c:	20000000 	.word	0x20000000
 8001540:	02dc6c00 	.word	0x02dc6c00

08001544 <exti_init>:
 8001544:	b580      	push	{r7, lr}
 8001546:	af00      	add	r7, sp, #0
 8001548:	2380      	movs	r3, #128	; 0x80
 800154a:	02db      	lsls	r3, r3, #11
 800154c:	1c18      	adds	r0, r3, #0
 800154e:	f7ff fc47 	bl	8000de0 <LL_AHB1_GRP1_EnableClock>
 8001552:	4b11      	ldr	r3, [pc, #68]	; (8001598 <exti_init+0x54>)
 8001554:	1c18      	adds	r0, r3, #0
 8001556:	2101      	movs	r1, #1
 8001558:	2200      	movs	r2, #0
 800155a:	f7ff fc83 	bl	8000e64 <LL_GPIO_SetPinMode>
 800155e:	4b0e      	ldr	r3, [pc, #56]	; (8001598 <exti_init+0x54>)
 8001560:	1c18      	adds	r0, r3, #0
 8001562:	2101      	movs	r1, #1
 8001564:	2202      	movs	r2, #2
 8001566:	f7ff fc99 	bl	8000e9c <LL_GPIO_SetPinPull>
 800156a:	2001      	movs	r0, #1
 800156c:	f7ff fc64 	bl	8000e38 <LL_APB1_GRP2_EnableClock>
 8001570:	2001      	movs	r0, #1
 8001572:	2100      	movs	r1, #0
 8001574:	f7ff fd4e 	bl	8001014 <LL_SYSCFG_SetEXTISource>
 8001578:	2001      	movs	r0, #1
 800157a:	f7ff fd83 	bl	8001084 <LL_EXTI_EnableIT_0_31>
 800157e:	2001      	movs	r0, #1
 8001580:	f7ff fd90 	bl	80010a4 <LL_EXTI_EnableFallingTrig_0_31>
 8001584:	2005      	movs	r0, #5
 8001586:	f7ff fb87 	bl	8000c98 <NVIC_EnableIRQ>
 800158a:	2005      	movs	r0, #5
 800158c:	2100      	movs	r1, #0
 800158e:	f7ff fb99 	bl	8000cc4 <NVIC_SetPriority>
 8001592:	46bd      	mov	sp, r7
 8001594:	bd80      	pop	{r7, pc}
 8001596:	46c0      	nop			; (mov r8, r8)
 8001598:	48000400 	.word	0x48000400

0800159c <NMI_Handler>:
 800159c:	b580      	push	{r7, lr}
 800159e:	af00      	add	r7, sp, #0
 80015a0:	46bd      	mov	sp, r7
 80015a2:	bd80      	pop	{r7, pc}

080015a4 <HardFault_Handler>:
 80015a4:	b580      	push	{r7, lr}
 80015a6:	af00      	add	r7, sp, #0
 80015a8:	e7fe      	b.n	80015a8 <HardFault_Handler+0x4>
 80015aa:	46c0      	nop			; (mov r8, r8)

080015ac <SVC_Handler>:
 80015ac:	b580      	push	{r7, lr}
 80015ae:	af00      	add	r7, sp, #0
 80015b0:	46bd      	mov	sp, r7
 80015b2:	bd80      	pop	{r7, pc}

080015b4 <PendSV_Handler>:
 80015b4:	b580      	push	{r7, lr}
 80015b6:	af00      	add	r7, sp, #0
 80015b8:	46bd      	mov	sp, r7
 80015ba:	bd80      	pop	{r7, pc}

080015bc <SysTick_Handler>:
 80015bc:	b5b0      	push	{r4, r5, r7, lr}
 80015be:	b08a      	sub	sp, #40	; 0x28
 80015c0:	af08      	add	r7, sp, #32
 80015c2:	4b3d      	ldr	r3, [pc, #244]	; (80016b8 <SysTick_Handler+0xfc>)
 80015c4:	681b      	ldr	r3, [r3, #0]
 80015c6:	2b64      	cmp	r3, #100	; 0x64
 80015c8:	d16d      	bne.n	80016a6 <SysTick_Handler+0xea>
 80015ca:	4b3c      	ldr	r3, [pc, #240]	; (80016bc <SysTick_Handler+0x100>)
 80015cc:	681b      	ldr	r3, [r3, #0]
 80015ce:	2b00      	cmp	r3, #0
 80015d0:	d03a      	beq.n	8001648 <SysTick_Handler+0x8c>
 80015d2:	4c3b      	ldr	r4, [pc, #236]	; (80016c0 <SysTick_Handler+0x104>)
 80015d4:	1c3a      	adds	r2, r7, #0
 80015d6:	4b3b      	ldr	r3, [pc, #236]	; (80016c4 <SysTick_Handler+0x108>)
 80015d8:	1c10      	adds	r0, r2, #0
 80015da:	1c19      	adds	r1, r3, #0
 80015dc:	2203      	movs	r2, #3
 80015de:	f7ff fda9 	bl	8001134 <logic_motor>
 80015e2:	1c3a      	adds	r2, r7, #0
 80015e4:	1c23      	adds	r3, r4, #0
 80015e6:	ca03      	ldmia	r2!, {r0, r1}
 80015e8:	c303      	stmia	r3!, {r0, r1}
 80015ea:	4b35      	ldr	r3, [pc, #212]	; (80016c0 <SysTick_Handler+0x104>)
 80015ec:	681a      	ldr	r2, [r3, #0]
 80015ee:	4b36      	ldr	r3, [pc, #216]	; (80016c8 <SysTick_Handler+0x10c>)
 80015f0:	2180      	movs	r1, #128	; 0x80
 80015f2:	05c9      	lsls	r1, r1, #23
 80015f4:	9104      	str	r1, [sp, #16]
 80015f6:	2110      	movs	r1, #16
 80015f8:	9105      	str	r1, [sp, #20]
 80015fa:	9206      	str	r2, [sp, #24]
 80015fc:	466a      	mov	r2, sp
 80015fe:	1c11      	adds	r1, r2, #0
 8001600:	1c1a      	adds	r2, r3, #0
 8001602:	3210      	adds	r2, #16
 8001604:	ca31      	ldmia	r2!, {r0, r4, r5}
 8001606:	c131      	stmia	r1!, {r0, r4, r5}
 8001608:	6812      	ldr	r2, [r2, #0]
 800160a:	600a      	str	r2, [r1, #0]
 800160c:	6818      	ldr	r0, [r3, #0]
 800160e:	6859      	ldr	r1, [r3, #4]
 8001610:	689a      	ldr	r2, [r3, #8]
 8001612:	68db      	ldr	r3, [r3, #12]
 8001614:	f7ff ff2e 	bl	8001474 <pwm_motor_set>
 8001618:	4b29      	ldr	r3, [pc, #164]	; (80016c0 <SysTick_Handler+0x104>)
 800161a:	685a      	ldr	r2, [r3, #4]
 800161c:	4b2b      	ldr	r3, [pc, #172]	; (80016cc <SysTick_Handler+0x110>)
 800161e:	492c      	ldr	r1, [pc, #176]	; (80016d0 <SysTick_Handler+0x114>)
 8001620:	9104      	str	r1, [sp, #16]
 8001622:	2180      	movs	r1, #128	; 0x80
 8001624:	0049      	lsls	r1, r1, #1
 8001626:	9105      	str	r1, [sp, #20]
 8001628:	9206      	str	r2, [sp, #24]
 800162a:	466a      	mov	r2, sp
 800162c:	1c11      	adds	r1, r2, #0
 800162e:	1c1a      	adds	r2, r3, #0
 8001630:	3210      	adds	r2, #16
 8001632:	ca31      	ldmia	r2!, {r0, r4, r5}
 8001634:	c131      	stmia	r1!, {r0, r4, r5}
 8001636:	6812      	ldr	r2, [r2, #0]
 8001638:	600a      	str	r2, [r1, #0]
 800163a:	6818      	ldr	r0, [r3, #0]
 800163c:	6859      	ldr	r1, [r3, #4]
 800163e:	689a      	ldr	r2, [r3, #8]
 8001640:	68db      	ldr	r3, [r3, #12]
 8001642:	f7ff ff17 	bl	8001474 <pwm_motor_set>
 8001646:	e02b      	b.n	80016a0 <SysTick_Handler+0xe4>
 8001648:	4b1f      	ldr	r3, [pc, #124]	; (80016c8 <SysTick_Handler+0x10c>)
 800164a:	2280      	movs	r2, #128	; 0x80
 800164c:	05d2      	lsls	r2, r2, #23
 800164e:	9204      	str	r2, [sp, #16]
 8001650:	2210      	movs	r2, #16
 8001652:	9205      	str	r2, [sp, #20]
 8001654:	2250      	movs	r2, #80	; 0x50
 8001656:	9206      	str	r2, [sp, #24]
 8001658:	466a      	mov	r2, sp
 800165a:	1c11      	adds	r1, r2, #0
 800165c:	1c1a      	adds	r2, r3, #0
 800165e:	3210      	adds	r2, #16
 8001660:	ca31      	ldmia	r2!, {r0, r4, r5}
 8001662:	c131      	stmia	r1!, {r0, r4, r5}
 8001664:	6812      	ldr	r2, [r2, #0]
 8001666:	600a      	str	r2, [r1, #0]
 8001668:	6818      	ldr	r0, [r3, #0]
 800166a:	6859      	ldr	r1, [r3, #4]
 800166c:	689a      	ldr	r2, [r3, #8]
 800166e:	68db      	ldr	r3, [r3, #12]
 8001670:	f7ff ff00 	bl	8001474 <pwm_motor_set>
 8001674:	4b15      	ldr	r3, [pc, #84]	; (80016cc <SysTick_Handler+0x110>)
 8001676:	4a16      	ldr	r2, [pc, #88]	; (80016d0 <SysTick_Handler+0x114>)
 8001678:	9204      	str	r2, [sp, #16]
 800167a:	2280      	movs	r2, #128	; 0x80
 800167c:	0052      	lsls	r2, r2, #1
 800167e:	9205      	str	r2, [sp, #20]
 8001680:	2250      	movs	r2, #80	; 0x50
 8001682:	9206      	str	r2, [sp, #24]
 8001684:	466a      	mov	r2, sp
 8001686:	1c11      	adds	r1, r2, #0
 8001688:	1c1a      	adds	r2, r3, #0
 800168a:	3210      	adds	r2, #16
 800168c:	ca31      	ldmia	r2!, {r0, r4, r5}
 800168e:	c131      	stmia	r1!, {r0, r4, r5}
 8001690:	6812      	ldr	r2, [r2, #0]
 8001692:	600a      	str	r2, [r1, #0]
 8001694:	6818      	ldr	r0, [r3, #0]
 8001696:	6859      	ldr	r1, [r3, #4]
 8001698:	689a      	ldr	r2, [r3, #8]
 800169a:	68db      	ldr	r3, [r3, #12]
 800169c:	f7ff feea 	bl	8001474 <pwm_motor_set>
 80016a0:	4b05      	ldr	r3, [pc, #20]	; (80016b8 <SysTick_Handler+0xfc>)
 80016a2:	2200      	movs	r2, #0
 80016a4:	601a      	str	r2, [r3, #0]
 80016a6:	4b04      	ldr	r3, [pc, #16]	; (80016b8 <SysTick_Handler+0xfc>)
 80016a8:	681b      	ldr	r3, [r3, #0]
 80016aa:	1c5a      	adds	r2, r3, #1
 80016ac:	4b02      	ldr	r3, [pc, #8]	; (80016b8 <SysTick_Handler+0xfc>)
 80016ae:	601a      	str	r2, [r3, #0]
 80016b0:	46bd      	mov	sp, r7
 80016b2:	b002      	add	sp, #8
 80016b4:	bdb0      	pop	{r4, r5, r7, pc}
 80016b6:	46c0      	nop			; (mov r8, r8)
 80016b8:	20000484 	.word	0x20000484
 80016bc:	2000044c 	.word	0x2000044c
 80016c0:	20000458 	.word	0x20000458
 80016c4:	2000048c 	.word	0x2000048c
 80016c8:	20000464 	.word	0x20000464
 80016cc:	200004a4 	.word	0x200004a4
 80016d0:	40000400 	.word	0x40000400

080016d4 <EXTI0_1_IRQHandler>:
 80016d4:	b580      	push	{r7, lr}
 80016d6:	af00      	add	r7, sp, #0
 80016d8:	2001      	movs	r0, #1
 80016da:	f7ff fcf3 	bl	80010c4 <LL_EXTI_IsActiveFlag_0_31>
 80016de:	1e03      	subs	r3, r0, #0
 80016e0:	d00d      	beq.n	80016fe <EXTI0_1_IRQHandler+0x2a>
 80016e2:	4b08      	ldr	r3, [pc, #32]	; (8001704 <EXTI0_1_IRQHandler+0x30>)
 80016e4:	681b      	ldr	r3, [r3, #0]
 80016e6:	2b00      	cmp	r3, #0
 80016e8:	d003      	beq.n	80016f2 <EXTI0_1_IRQHandler+0x1e>
 80016ea:	4b06      	ldr	r3, [pc, #24]	; (8001704 <EXTI0_1_IRQHandler+0x30>)
 80016ec:	2200      	movs	r2, #0
 80016ee:	601a      	str	r2, [r3, #0]
 80016f0:	e002      	b.n	80016f8 <EXTI0_1_IRQHandler+0x24>
 80016f2:	4b04      	ldr	r3, [pc, #16]	; (8001704 <EXTI0_1_IRQHandler+0x30>)
 80016f4:	2201      	movs	r2, #1
 80016f6:	601a      	str	r2, [r3, #0]
 80016f8:	2001      	movs	r0, #1
 80016fa:	f7ff fcf7 	bl	80010ec <LL_EXTI_ClearFlag_0_31>
 80016fe:	46bd      	mov	sp, r7
 8001700:	bd80      	pop	{r7, pc}
 8001702:	46c0      	nop			; (mov r8, r8)
 8001704:	2000044c 	.word	0x2000044c

08001708 <main>:
 8001708:	b5f0      	push	{r4, r5, r6, r7, lr}
 800170a:	b08d      	sub	sp, #52	; 0x34
 800170c:	af04      	add	r7, sp, #16
 800170e:	f7ff fedf 	bl	80014d0 <rcc_init>
 8001712:	f7ff ff17 	bl	8001544 <exti_init>
 8001716:	4c24      	ldr	r4, [pc, #144]	; (80017a8 <main+0xa0>)
 8001718:	1c3a      	adds	r2, r7, #0
 800171a:	4924      	ldr	r1, [pc, #144]	; (80017ac <main+0xa4>)
 800171c:	4d24      	ldr	r5, [pc, #144]	; (80017b0 <main+0xa8>)
 800171e:	2302      	movs	r3, #2
 8001720:	9300      	str	r3, [sp, #0]
 8001722:	2310      	movs	r3, #16
 8001724:	9301      	str	r3, [sp, #4]
 8001726:	2301      	movs	r3, #1
 8001728:	9302      	str	r3, [sp, #8]
 800172a:	1c10      	adds	r0, r2, #0
 800172c:	2280      	movs	r2, #128	; 0x80
 800172e:	1c2b      	adds	r3, r5, #0
 8001730:	f7ff fdf8 	bl	8001324 <pwm_motor_init>
 8001734:	1c3a      	adds	r2, r7, #0
 8001736:	1c23      	adds	r3, r4, #0
 8001738:	ca13      	ldmia	r2!, {r0, r1, r4}
 800173a:	c313      	stmia	r3!, {r0, r1, r4}
 800173c:	ca13      	ldmia	r2!, {r0, r1, r4}
 800173e:	c313      	stmia	r3!, {r0, r1, r4}
 8001740:	ca03      	ldmia	r2!, {r0, r1}
 8001742:	c303      	stmia	r3!, {r0, r1}
 8001744:	4c1b      	ldr	r4, [pc, #108]	; (80017b4 <main+0xac>)
 8001746:	1c39      	adds	r1, r7, #0
 8001748:	4e18      	ldr	r6, [pc, #96]	; (80017ac <main+0xa4>)
 800174a:	2380      	movs	r3, #128	; 0x80
 800174c:	005a      	lsls	r2, r3, #1
 800174e:	4d18      	ldr	r5, [pc, #96]	; (80017b0 <main+0xa8>)
 8001750:	2302      	movs	r3, #2
 8001752:	9300      	str	r3, [sp, #0]
 8001754:	2380      	movs	r3, #128	; 0x80
 8001756:	005b      	lsls	r3, r3, #1
 8001758:	9301      	str	r3, [sp, #4]
 800175a:	2301      	movs	r3, #1
 800175c:	9302      	str	r3, [sp, #8]
 800175e:	1c08      	adds	r0, r1, #0
 8001760:	1c31      	adds	r1, r6, #0
 8001762:	1c2b      	adds	r3, r5, #0
 8001764:	f7ff fdde 	bl	8001324 <pwm_motor_init>
 8001768:	1c3a      	adds	r2, r7, #0
 800176a:	1c23      	adds	r3, r4, #0
 800176c:	ca13      	ldmia	r2!, {r0, r1, r4}
 800176e:	c313      	stmia	r3!, {r0, r1, r4}
 8001770:	ca13      	ldmia	r2!, {r0, r1, r4}
 8001772:	c313      	stmia	r3!, {r0, r1, r4}
 8001774:	ca03      	ldmia	r2!, {r0, r1}
 8001776:	c303      	stmia	r3!, {r0, r1}
 8001778:	4b0f      	ldr	r3, [pc, #60]	; (80017b8 <main+0xb0>)
 800177a:	221a      	movs	r2, #26
 800177c:	601a      	str	r2, [r3, #0]
 800177e:	4b0e      	ldr	r3, [pc, #56]	; (80017b8 <main+0xb0>)
 8001780:	2212      	movs	r2, #18
 8001782:	605a      	str	r2, [r3, #4]
 8001784:	4b0c      	ldr	r3, [pc, #48]	; (80017b8 <main+0xb0>)
 8001786:	221a      	movs	r2, #26
 8001788:	609a      	str	r2, [r3, #8]
 800178a:	4b0b      	ldr	r3, [pc, #44]	; (80017b8 <main+0xb0>)
 800178c:	221e      	movs	r2, #30
 800178e:	60da      	str	r2, [r3, #12]
 8001790:	4b09      	ldr	r3, [pc, #36]	; (80017b8 <main+0xb0>)
 8001792:	221a      	movs	r2, #26
 8001794:	611a      	str	r2, [r3, #16]
 8001796:	4b08      	ldr	r3, [pc, #32]	; (80017b8 <main+0xb0>)
 8001798:	221a      	movs	r2, #26
 800179a:	615a      	str	r2, [r3, #20]
 800179c:	2300      	movs	r3, #0
 800179e:	1c18      	adds	r0, r3, #0
 80017a0:	46bd      	mov	sp, r7
 80017a2:	b009      	add	sp, #36	; 0x24
 80017a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80017a6:	46c0      	nop			; (mov r8, r8)
 80017a8:	20000464 	.word	0x20000464
 80017ac:	48000800 	.word	0x48000800
 80017b0:	40000400 	.word	0x40000400
 80017b4:	200004a4 	.word	0x200004a4
 80017b8:	2000048c 	.word	0x2000048c

080017bc <SystemInit>:
 80017bc:	b580      	push	{r7, lr}
 80017be:	af00      	add	r7, sp, #0
 80017c0:	4b1a      	ldr	r3, [pc, #104]	; (800182c <SystemInit+0x70>)
 80017c2:	4a1a      	ldr	r2, [pc, #104]	; (800182c <SystemInit+0x70>)
 80017c4:	6812      	ldr	r2, [r2, #0]
 80017c6:	2101      	movs	r1, #1
 80017c8:	430a      	orrs	r2, r1
 80017ca:	601a      	str	r2, [r3, #0]
 80017cc:	4b17      	ldr	r3, [pc, #92]	; (800182c <SystemInit+0x70>)
 80017ce:	4a17      	ldr	r2, [pc, #92]	; (800182c <SystemInit+0x70>)
 80017d0:	6852      	ldr	r2, [r2, #4]
 80017d2:	4917      	ldr	r1, [pc, #92]	; (8001830 <SystemInit+0x74>)
 80017d4:	400a      	ands	r2, r1
 80017d6:	605a      	str	r2, [r3, #4]
 80017d8:	4b14      	ldr	r3, [pc, #80]	; (800182c <SystemInit+0x70>)
 80017da:	4a14      	ldr	r2, [pc, #80]	; (800182c <SystemInit+0x70>)
 80017dc:	6812      	ldr	r2, [r2, #0]
 80017de:	4915      	ldr	r1, [pc, #84]	; (8001834 <SystemInit+0x78>)
 80017e0:	400a      	ands	r2, r1
 80017e2:	601a      	str	r2, [r3, #0]
 80017e4:	4b11      	ldr	r3, [pc, #68]	; (800182c <SystemInit+0x70>)
 80017e6:	4a11      	ldr	r2, [pc, #68]	; (800182c <SystemInit+0x70>)
 80017e8:	6812      	ldr	r2, [r2, #0]
 80017ea:	4913      	ldr	r1, [pc, #76]	; (8001838 <SystemInit+0x7c>)
 80017ec:	400a      	ands	r2, r1
 80017ee:	601a      	str	r2, [r3, #0]
 80017f0:	4b0e      	ldr	r3, [pc, #56]	; (800182c <SystemInit+0x70>)
 80017f2:	4a0e      	ldr	r2, [pc, #56]	; (800182c <SystemInit+0x70>)
 80017f4:	6852      	ldr	r2, [r2, #4]
 80017f6:	4911      	ldr	r1, [pc, #68]	; (800183c <SystemInit+0x80>)
 80017f8:	400a      	ands	r2, r1
 80017fa:	605a      	str	r2, [r3, #4]
 80017fc:	4b0b      	ldr	r3, [pc, #44]	; (800182c <SystemInit+0x70>)
 80017fe:	4a0b      	ldr	r2, [pc, #44]	; (800182c <SystemInit+0x70>)
 8001800:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001802:	210f      	movs	r1, #15
 8001804:	438a      	bics	r2, r1
 8001806:	62da      	str	r2, [r3, #44]	; 0x2c
 8001808:	4b08      	ldr	r3, [pc, #32]	; (800182c <SystemInit+0x70>)
 800180a:	4a08      	ldr	r2, [pc, #32]	; (800182c <SystemInit+0x70>)
 800180c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800180e:	490c      	ldr	r1, [pc, #48]	; (8001840 <SystemInit+0x84>)
 8001810:	400a      	ands	r2, r1
 8001812:	631a      	str	r2, [r3, #48]	; 0x30
 8001814:	4b05      	ldr	r3, [pc, #20]	; (800182c <SystemInit+0x70>)
 8001816:	4a05      	ldr	r2, [pc, #20]	; (800182c <SystemInit+0x70>)
 8001818:	6b52      	ldr	r2, [r2, #52]	; 0x34
 800181a:	2101      	movs	r1, #1
 800181c:	438a      	bics	r2, r1
 800181e:	635a      	str	r2, [r3, #52]	; 0x34
 8001820:	4b02      	ldr	r3, [pc, #8]	; (800182c <SystemInit+0x70>)
 8001822:	2200      	movs	r2, #0
 8001824:	609a      	str	r2, [r3, #8]
 8001826:	46bd      	mov	sp, r7
 8001828:	bd80      	pop	{r7, pc}
 800182a:	46c0      	nop			; (mov r8, r8)
 800182c:	40021000 	.word	0x40021000
 8001830:	f8ffb80c 	.word	0xf8ffb80c
 8001834:	fef6ffff 	.word	0xfef6ffff
 8001838:	fffbffff 	.word	0xfffbffff
 800183c:	ffc0ffff 	.word	0xffc0ffff
 8001840:	fffffeac 	.word	0xfffffeac

08001844 <LL_TIM_SetPrescaler>:
 8001844:	b580      	push	{r7, lr}
 8001846:	b082      	sub	sp, #8
 8001848:	af00      	add	r7, sp, #0
 800184a:	6078      	str	r0, [r7, #4]
 800184c:	6039      	str	r1, [r7, #0]
 800184e:	687b      	ldr	r3, [r7, #4]
 8001850:	683a      	ldr	r2, [r7, #0]
 8001852:	629a      	str	r2, [r3, #40]	; 0x28
 8001854:	46bd      	mov	sp, r7
 8001856:	b002      	add	sp, #8
 8001858:	bd80      	pop	{r7, pc}
 800185a:	46c0      	nop			; (mov r8, r8)

0800185c <LL_TIM_SetAutoReload>:
 800185c:	b580      	push	{r7, lr}
 800185e:	b082      	sub	sp, #8
 8001860:	af00      	add	r7, sp, #0
 8001862:	6078      	str	r0, [r7, #4]
 8001864:	6039      	str	r1, [r7, #0]
 8001866:	687b      	ldr	r3, [r7, #4]
 8001868:	683a      	ldr	r2, [r7, #0]
 800186a:	62da      	str	r2, [r3, #44]	; 0x2c
 800186c:	46bd      	mov	sp, r7
 800186e:	b002      	add	sp, #8
 8001870:	bd80      	pop	{r7, pc}
 8001872:	46c0      	nop			; (mov r8, r8)

08001874 <LL_TIM_SetRepetitionCounter>:
 8001874:	b580      	push	{r7, lr}
 8001876:	b082      	sub	sp, #8
 8001878:	af00      	add	r7, sp, #0
 800187a:	6078      	str	r0, [r7, #4]
 800187c:	6039      	str	r1, [r7, #0]
 800187e:	687b      	ldr	r3, [r7, #4]
 8001880:	683a      	ldr	r2, [r7, #0]
 8001882:	631a      	str	r2, [r3, #48]	; 0x30
 8001884:	46bd      	mov	sp, r7
 8001886:	b002      	add	sp, #8
 8001888:	bd80      	pop	{r7, pc}
 800188a:	46c0      	nop			; (mov r8, r8)

0800188c <LL_TIM_OC_SetCompareCH1>:
 800188c:	b580      	push	{r7, lr}
 800188e:	b082      	sub	sp, #8
 8001890:	af00      	add	r7, sp, #0
 8001892:	6078      	str	r0, [r7, #4]
 8001894:	6039      	str	r1, [r7, #0]
 8001896:	687b      	ldr	r3, [r7, #4]
 8001898:	683a      	ldr	r2, [r7, #0]
 800189a:	635a      	str	r2, [r3, #52]	; 0x34
 800189c:	46bd      	mov	sp, r7
 800189e:	b002      	add	sp, #8
 80018a0:	bd80      	pop	{r7, pc}
 80018a2:	46c0      	nop			; (mov r8, r8)

080018a4 <LL_TIM_OC_SetCompareCH2>:
 80018a4:	b580      	push	{r7, lr}
 80018a6:	b082      	sub	sp, #8
 80018a8:	af00      	add	r7, sp, #0
 80018aa:	6078      	str	r0, [r7, #4]
 80018ac:	6039      	str	r1, [r7, #0]
 80018ae:	687b      	ldr	r3, [r7, #4]
 80018b0:	683a      	ldr	r2, [r7, #0]
 80018b2:	639a      	str	r2, [r3, #56]	; 0x38
 80018b4:	46bd      	mov	sp, r7
 80018b6:	b002      	add	sp, #8
 80018b8:	bd80      	pop	{r7, pc}
 80018ba:	46c0      	nop			; (mov r8, r8)

080018bc <LL_TIM_OC_SetCompareCH3>:
 80018bc:	b580      	push	{r7, lr}
 80018be:	b082      	sub	sp, #8
 80018c0:	af00      	add	r7, sp, #0
 80018c2:	6078      	str	r0, [r7, #4]
 80018c4:	6039      	str	r1, [r7, #0]
 80018c6:	687b      	ldr	r3, [r7, #4]
 80018c8:	683a      	ldr	r2, [r7, #0]
 80018ca:	63da      	str	r2, [r3, #60]	; 0x3c
 80018cc:	46bd      	mov	sp, r7
 80018ce:	b002      	add	sp, #8
 80018d0:	bd80      	pop	{r7, pc}
 80018d2:	46c0      	nop			; (mov r8, r8)

080018d4 <LL_TIM_OC_SetCompareCH4>:
 80018d4:	b580      	push	{r7, lr}
 80018d6:	b082      	sub	sp, #8
 80018d8:	af00      	add	r7, sp, #0
 80018da:	6078      	str	r0, [r7, #4]
 80018dc:	6039      	str	r1, [r7, #0]
 80018de:	687b      	ldr	r3, [r7, #4]
 80018e0:	683a      	ldr	r2, [r7, #0]
 80018e2:	641a      	str	r2, [r3, #64]	; 0x40
 80018e4:	46bd      	mov	sp, r7
 80018e6:	b002      	add	sp, #8
 80018e8:	bd80      	pop	{r7, pc}
 80018ea:	46c0      	nop			; (mov r8, r8)

080018ec <LL_TIM_GenerateEvent_UPDATE>:
 80018ec:	b580      	push	{r7, lr}
 80018ee:	b082      	sub	sp, #8
 80018f0:	af00      	add	r7, sp, #0
 80018f2:	6078      	str	r0, [r7, #4]
 80018f4:	687b      	ldr	r3, [r7, #4]
 80018f6:	695b      	ldr	r3, [r3, #20]
 80018f8:	2201      	movs	r2, #1
 80018fa:	431a      	orrs	r2, r3
 80018fc:	687b      	ldr	r3, [r7, #4]
 80018fe:	615a      	str	r2, [r3, #20]
 8001900:	46bd      	mov	sp, r7
 8001902:	b002      	add	sp, #8
 8001904:	bd80      	pop	{r7, pc}
 8001906:	46c0      	nop			; (mov r8, r8)

08001908 <LL_TIM_StructInit>:
 8001908:	b580      	push	{r7, lr}
 800190a:	b082      	sub	sp, #8
 800190c:	af00      	add	r7, sp, #0
 800190e:	6078      	str	r0, [r7, #4]
 8001910:	687b      	ldr	r3, [r7, #4]
 8001912:	2200      	movs	r2, #0
 8001914:	801a      	strh	r2, [r3, #0]
 8001916:	687b      	ldr	r3, [r7, #4]
 8001918:	2200      	movs	r2, #0
 800191a:	605a      	str	r2, [r3, #4]
 800191c:	687b      	ldr	r3, [r7, #4]
 800191e:	2201      	movs	r2, #1
 8001920:	4252      	negs	r2, r2
 8001922:	609a      	str	r2, [r3, #8]
 8001924:	687b      	ldr	r3, [r7, #4]
 8001926:	2200      	movs	r2, #0
 8001928:	60da      	str	r2, [r3, #12]
 800192a:	687b      	ldr	r3, [r7, #4]
 800192c:	2200      	movs	r2, #0
 800192e:	741a      	strb	r2, [r3, #16]
 8001930:	46bd      	mov	sp, r7
 8001932:	b002      	add	sp, #8
 8001934:	bd80      	pop	{r7, pc}
 8001936:	46c0      	nop			; (mov r8, r8)

08001938 <LL_TIM_Init>:
 8001938:	b580      	push	{r7, lr}
 800193a:	b084      	sub	sp, #16
 800193c:	af00      	add	r7, sp, #0
 800193e:	6078      	str	r0, [r7, #4]
 8001940:	6039      	str	r1, [r7, #0]
 8001942:	2300      	movs	r3, #0
 8001944:	60fb      	str	r3, [r7, #12]
 8001946:	687b      	ldr	r3, [r7, #4]
 8001948:	681b      	ldr	r3, [r3, #0]
 800194a:	60fb      	str	r3, [r7, #12]
 800194c:	687b      	ldr	r3, [r7, #4]
 800194e:	4a35      	ldr	r2, [pc, #212]	; (8001a24 <LL_TIM_Init+0xec>)
 8001950:	4293      	cmp	r3, r2
 8001952:	d008      	beq.n	8001966 <LL_TIM_Init+0x2e>
 8001954:	687a      	ldr	r2, [r7, #4]
 8001956:	2380      	movs	r3, #128	; 0x80
 8001958:	05db      	lsls	r3, r3, #23
 800195a:	429a      	cmp	r2, r3
 800195c:	d003      	beq.n	8001966 <LL_TIM_Init+0x2e>
 800195e:	687b      	ldr	r3, [r7, #4]
 8001960:	4a31      	ldr	r2, [pc, #196]	; (8001a28 <LL_TIM_Init+0xf0>)
 8001962:	4293      	cmp	r3, r2
 8001964:	d107      	bne.n	8001976 <LL_TIM_Init+0x3e>
 8001966:	68fb      	ldr	r3, [r7, #12]
 8001968:	2270      	movs	r2, #112	; 0x70
 800196a:	4393      	bics	r3, r2
 800196c:	1c1a      	adds	r2, r3, #0
 800196e:	683b      	ldr	r3, [r7, #0]
 8001970:	685b      	ldr	r3, [r3, #4]
 8001972:	4313      	orrs	r3, r2
 8001974:	60fb      	str	r3, [r7, #12]
 8001976:	687b      	ldr	r3, [r7, #4]
 8001978:	4a2a      	ldr	r2, [pc, #168]	; (8001a24 <LL_TIM_Init+0xec>)
 800197a:	4293      	cmp	r3, r2
 800197c:	d018      	beq.n	80019b0 <LL_TIM_Init+0x78>
 800197e:	687a      	ldr	r2, [r7, #4]
 8001980:	2380      	movs	r3, #128	; 0x80
 8001982:	05db      	lsls	r3, r3, #23
 8001984:	429a      	cmp	r2, r3
 8001986:	d013      	beq.n	80019b0 <LL_TIM_Init+0x78>
 8001988:	687b      	ldr	r3, [r7, #4]
 800198a:	4a27      	ldr	r2, [pc, #156]	; (8001a28 <LL_TIM_Init+0xf0>)
 800198c:	4293      	cmp	r3, r2
 800198e:	d00f      	beq.n	80019b0 <LL_TIM_Init+0x78>
 8001990:	687b      	ldr	r3, [r7, #4]
 8001992:	4a26      	ldr	r2, [pc, #152]	; (8001a2c <LL_TIM_Init+0xf4>)
 8001994:	4293      	cmp	r3, r2
 8001996:	d00b      	beq.n	80019b0 <LL_TIM_Init+0x78>
 8001998:	687b      	ldr	r3, [r7, #4]
 800199a:	4a25      	ldr	r2, [pc, #148]	; (8001a30 <LL_TIM_Init+0xf8>)
 800199c:	4293      	cmp	r3, r2
 800199e:	d007      	beq.n	80019b0 <LL_TIM_Init+0x78>
 80019a0:	687b      	ldr	r3, [r7, #4]
 80019a2:	4a24      	ldr	r2, [pc, #144]	; (8001a34 <LL_TIM_Init+0xfc>)
 80019a4:	4293      	cmp	r3, r2
 80019a6:	d003      	beq.n	80019b0 <LL_TIM_Init+0x78>
 80019a8:	687b      	ldr	r3, [r7, #4]
 80019aa:	4a23      	ldr	r2, [pc, #140]	; (8001a38 <LL_TIM_Init+0x100>)
 80019ac:	4293      	cmp	r3, r2
 80019ae:	d106      	bne.n	80019be <LL_TIM_Init+0x86>
 80019b0:	68fb      	ldr	r3, [r7, #12]
 80019b2:	4a22      	ldr	r2, [pc, #136]	; (8001a3c <LL_TIM_Init+0x104>)
 80019b4:	401a      	ands	r2, r3
 80019b6:	683b      	ldr	r3, [r7, #0]
 80019b8:	68db      	ldr	r3, [r3, #12]
 80019ba:	4313      	orrs	r3, r2
 80019bc:	60fb      	str	r3, [r7, #12]
 80019be:	687b      	ldr	r3, [r7, #4]
 80019c0:	68fa      	ldr	r2, [r7, #12]
 80019c2:	601a      	str	r2, [r3, #0]
 80019c4:	683b      	ldr	r3, [r7, #0]
 80019c6:	689b      	ldr	r3, [r3, #8]
 80019c8:	687a      	ldr	r2, [r7, #4]
 80019ca:	1c10      	adds	r0, r2, #0
 80019cc:	1c19      	adds	r1, r3, #0
 80019ce:	f7ff ff45 	bl	800185c <LL_TIM_SetAutoReload>
 80019d2:	683b      	ldr	r3, [r7, #0]
 80019d4:	881b      	ldrh	r3, [r3, #0]
 80019d6:	1c1a      	adds	r2, r3, #0
 80019d8:	687b      	ldr	r3, [r7, #4]
 80019da:	1c18      	adds	r0, r3, #0
 80019dc:	1c11      	adds	r1, r2, #0
 80019de:	f7ff ff31 	bl	8001844 <LL_TIM_SetPrescaler>
 80019e2:	687b      	ldr	r3, [r7, #4]
 80019e4:	4a0f      	ldr	r2, [pc, #60]	; (8001a24 <LL_TIM_Init+0xec>)
 80019e6:	4293      	cmp	r3, r2
 80019e8:	d00b      	beq.n	8001a02 <LL_TIM_Init+0xca>
 80019ea:	687b      	ldr	r3, [r7, #4]
 80019ec:	4a10      	ldr	r2, [pc, #64]	; (8001a30 <LL_TIM_Init+0xf8>)
 80019ee:	4293      	cmp	r3, r2
 80019f0:	d007      	beq.n	8001a02 <LL_TIM_Init+0xca>
 80019f2:	687b      	ldr	r3, [r7, #4]
 80019f4:	4a0f      	ldr	r2, [pc, #60]	; (8001a34 <LL_TIM_Init+0xfc>)
 80019f6:	4293      	cmp	r3, r2
 80019f8:	d003      	beq.n	8001a02 <LL_TIM_Init+0xca>
 80019fa:	687b      	ldr	r3, [r7, #4]
 80019fc:	4a0e      	ldr	r2, [pc, #56]	; (8001a38 <LL_TIM_Init+0x100>)
 80019fe:	4293      	cmp	r3, r2
 8001a00:	d107      	bne.n	8001a12 <LL_TIM_Init+0xda>
 8001a02:	683b      	ldr	r3, [r7, #0]
 8001a04:	7c1b      	ldrb	r3, [r3, #16]
 8001a06:	1c1a      	adds	r2, r3, #0
 8001a08:	687b      	ldr	r3, [r7, #4]
 8001a0a:	1c18      	adds	r0, r3, #0
 8001a0c:	1c11      	adds	r1, r2, #0
 8001a0e:	f7ff ff31 	bl	8001874 <LL_TIM_SetRepetitionCounter>
 8001a12:	687b      	ldr	r3, [r7, #4]
 8001a14:	1c18      	adds	r0, r3, #0
 8001a16:	f7ff ff69 	bl	80018ec <LL_TIM_GenerateEvent_UPDATE>
 8001a1a:	2301      	movs	r3, #1
 8001a1c:	1c18      	adds	r0, r3, #0
 8001a1e:	46bd      	mov	sp, r7
 8001a20:	b004      	add	sp, #16
 8001a22:	bd80      	pop	{r7, pc}
 8001a24:	40012c00 	.word	0x40012c00
 8001a28:	40000400 	.word	0x40000400
 8001a2c:	40002000 	.word	0x40002000
 8001a30:	40014000 	.word	0x40014000
 8001a34:	40014400 	.word	0x40014400
 8001a38:	40014800 	.word	0x40014800
 8001a3c:	fffffcff 	.word	0xfffffcff

08001a40 <LL_TIM_OC_StructInit>:
 8001a40:	b580      	push	{r7, lr}
 8001a42:	b082      	sub	sp, #8
 8001a44:	af00      	add	r7, sp, #0
 8001a46:	6078      	str	r0, [r7, #4]
 8001a48:	687b      	ldr	r3, [r7, #4]
 8001a4a:	2200      	movs	r2, #0
 8001a4c:	601a      	str	r2, [r3, #0]
 8001a4e:	687b      	ldr	r3, [r7, #4]
 8001a50:	2200      	movs	r2, #0
 8001a52:	605a      	str	r2, [r3, #4]
 8001a54:	687b      	ldr	r3, [r7, #4]
 8001a56:	2200      	movs	r2, #0
 8001a58:	609a      	str	r2, [r3, #8]
 8001a5a:	687b      	ldr	r3, [r7, #4]
 8001a5c:	2200      	movs	r2, #0
 8001a5e:	60da      	str	r2, [r3, #12]
 8001a60:	687b      	ldr	r3, [r7, #4]
 8001a62:	2200      	movs	r2, #0
 8001a64:	611a      	str	r2, [r3, #16]
 8001a66:	687b      	ldr	r3, [r7, #4]
 8001a68:	2200      	movs	r2, #0
 8001a6a:	615a      	str	r2, [r3, #20]
 8001a6c:	687b      	ldr	r3, [r7, #4]
 8001a6e:	2200      	movs	r2, #0
 8001a70:	619a      	str	r2, [r3, #24]
 8001a72:	687b      	ldr	r3, [r7, #4]
 8001a74:	2200      	movs	r2, #0
 8001a76:	61da      	str	r2, [r3, #28]
 8001a78:	46bd      	mov	sp, r7
 8001a7a:	b002      	add	sp, #8
 8001a7c:	bd80      	pop	{r7, pc}
 8001a7e:	46c0      	nop			; (mov r8, r8)

08001a80 <LL_TIM_OC_Init>:
 8001a80:	b590      	push	{r4, r7, lr}
 8001a82:	b087      	sub	sp, #28
 8001a84:	af00      	add	r7, sp, #0
 8001a86:	60f8      	str	r0, [r7, #12]
 8001a88:	60b9      	str	r1, [r7, #8]
 8001a8a:	607a      	str	r2, [r7, #4]
 8001a8c:	2317      	movs	r3, #23
 8001a8e:	18fb      	adds	r3, r7, r3
 8001a90:	2200      	movs	r2, #0
 8001a92:	701a      	strb	r2, [r3, #0]
 8001a94:	68bb      	ldr	r3, [r7, #8]
 8001a96:	2b10      	cmp	r3, #16
 8001a98:	d017      	beq.n	8001aca <LL_TIM_OC_Init+0x4a>
 8001a9a:	d802      	bhi.n	8001aa2 <LL_TIM_OC_Init+0x22>
 8001a9c:	2b01      	cmp	r3, #1
 8001a9e:	d009      	beq.n	8001ab4 <LL_TIM_OC_Init+0x34>
 8001aa0:	e034      	b.n	8001b0c <LL_TIM_OC_Init+0x8c>
 8001aa2:	2280      	movs	r2, #128	; 0x80
 8001aa4:	0052      	lsls	r2, r2, #1
 8001aa6:	4293      	cmp	r3, r2
 8001aa8:	d01a      	beq.n	8001ae0 <LL_TIM_OC_Init+0x60>
 8001aaa:	2280      	movs	r2, #128	; 0x80
 8001aac:	0152      	lsls	r2, r2, #5
 8001aae:	4293      	cmp	r3, r2
 8001ab0:	d021      	beq.n	8001af6 <LL_TIM_OC_Init+0x76>
 8001ab2:	e02b      	b.n	8001b0c <LL_TIM_OC_Init+0x8c>
 8001ab4:	2317      	movs	r3, #23
 8001ab6:	18fc      	adds	r4, r7, r3
 8001ab8:	68fa      	ldr	r2, [r7, #12]
 8001aba:	687b      	ldr	r3, [r7, #4]
 8001abc:	1c10      	adds	r0, r2, #0
 8001abe:	1c19      	adds	r1, r3, #0
 8001ac0:	f000 f82c 	bl	8001b1c <OC1Config>
 8001ac4:	1c03      	adds	r3, r0, #0
 8001ac6:	7023      	strb	r3, [r4, #0]
 8001ac8:	e020      	b.n	8001b0c <LL_TIM_OC_Init+0x8c>
 8001aca:	2317      	movs	r3, #23
 8001acc:	18fc      	adds	r4, r7, r3
 8001ace:	68fa      	ldr	r2, [r7, #12]
 8001ad0:	687b      	ldr	r3, [r7, #4]
 8001ad2:	1c10      	adds	r0, r2, #0
 8001ad4:	1c19      	adds	r1, r3, #0
 8001ad6:	f000 f8ab 	bl	8001c30 <OC2Config>
 8001ada:	1c03      	adds	r3, r0, #0
 8001adc:	7023      	strb	r3, [r4, #0]
 8001ade:	e015      	b.n	8001b0c <LL_TIM_OC_Init+0x8c>
 8001ae0:	2317      	movs	r3, #23
 8001ae2:	18fc      	adds	r4, r7, r3
 8001ae4:	68fa      	ldr	r2, [r7, #12]
 8001ae6:	687b      	ldr	r3, [r7, #4]
 8001ae8:	1c10      	adds	r0, r2, #0
 8001aea:	1c19      	adds	r1, r3, #0
 8001aec:	f000 f930 	bl	8001d50 <OC3Config>
 8001af0:	1c03      	adds	r3, r0, #0
 8001af2:	7023      	strb	r3, [r4, #0]
 8001af4:	e00a      	b.n	8001b0c <LL_TIM_OC_Init+0x8c>
 8001af6:	2317      	movs	r3, #23
 8001af8:	18fc      	adds	r4, r7, r3
 8001afa:	68fa      	ldr	r2, [r7, #12]
 8001afc:	687b      	ldr	r3, [r7, #4]
 8001afe:	1c10      	adds	r0, r2, #0
 8001b00:	1c19      	adds	r1, r3, #0
 8001b02:	f000 f9b5 	bl	8001e70 <OC4Config>
 8001b06:	1c03      	adds	r3, r0, #0
 8001b08:	7023      	strb	r3, [r4, #0]
 8001b0a:	46c0      	nop			; (mov r8, r8)
 8001b0c:	2317      	movs	r3, #23
 8001b0e:	18fb      	adds	r3, r7, r3
 8001b10:	781b      	ldrb	r3, [r3, #0]
 8001b12:	1c18      	adds	r0, r3, #0
 8001b14:	46bd      	mov	sp, r7
 8001b16:	b007      	add	sp, #28
 8001b18:	bd90      	pop	{r4, r7, pc}
 8001b1a:	46c0      	nop			; (mov r8, r8)

08001b1c <OC1Config>:
 8001b1c:	b580      	push	{r7, lr}
 8001b1e:	b086      	sub	sp, #24
 8001b20:	af00      	add	r7, sp, #0
 8001b22:	6078      	str	r0, [r7, #4]
 8001b24:	6039      	str	r1, [r7, #0]
 8001b26:	2300      	movs	r3, #0
 8001b28:	60fb      	str	r3, [r7, #12]
 8001b2a:	2300      	movs	r3, #0
 8001b2c:	617b      	str	r3, [r7, #20]
 8001b2e:	2300      	movs	r3, #0
 8001b30:	613b      	str	r3, [r7, #16]
 8001b32:	687b      	ldr	r3, [r7, #4]
 8001b34:	6a1b      	ldr	r3, [r3, #32]
 8001b36:	2201      	movs	r2, #1
 8001b38:	4393      	bics	r3, r2
 8001b3a:	1c1a      	adds	r2, r3, #0
 8001b3c:	687b      	ldr	r3, [r7, #4]
 8001b3e:	621a      	str	r2, [r3, #32]
 8001b40:	687b      	ldr	r3, [r7, #4]
 8001b42:	6a1b      	ldr	r3, [r3, #32]
 8001b44:	617b      	str	r3, [r7, #20]
 8001b46:	687b      	ldr	r3, [r7, #4]
 8001b48:	685b      	ldr	r3, [r3, #4]
 8001b4a:	613b      	str	r3, [r7, #16]
 8001b4c:	687b      	ldr	r3, [r7, #4]
 8001b4e:	699b      	ldr	r3, [r3, #24]
 8001b50:	60fb      	str	r3, [r7, #12]
 8001b52:	68fb      	ldr	r3, [r7, #12]
 8001b54:	2203      	movs	r2, #3
 8001b56:	4393      	bics	r3, r2
 8001b58:	60fb      	str	r3, [r7, #12]
 8001b5a:	68fb      	ldr	r3, [r7, #12]
 8001b5c:	2270      	movs	r2, #112	; 0x70
 8001b5e:	4393      	bics	r3, r2
 8001b60:	1c1a      	adds	r2, r3, #0
 8001b62:	683b      	ldr	r3, [r7, #0]
 8001b64:	681b      	ldr	r3, [r3, #0]
 8001b66:	4313      	orrs	r3, r2
 8001b68:	60fb      	str	r3, [r7, #12]
 8001b6a:	697b      	ldr	r3, [r7, #20]
 8001b6c:	2202      	movs	r2, #2
 8001b6e:	4393      	bics	r3, r2
 8001b70:	1c1a      	adds	r2, r3, #0
 8001b72:	683b      	ldr	r3, [r7, #0]
 8001b74:	691b      	ldr	r3, [r3, #16]
 8001b76:	4313      	orrs	r3, r2
 8001b78:	617b      	str	r3, [r7, #20]
 8001b7a:	697b      	ldr	r3, [r7, #20]
 8001b7c:	2201      	movs	r2, #1
 8001b7e:	4393      	bics	r3, r2
 8001b80:	1c1a      	adds	r2, r3, #0
 8001b82:	683b      	ldr	r3, [r7, #0]
 8001b84:	685b      	ldr	r3, [r3, #4]
 8001b86:	4313      	orrs	r3, r2
 8001b88:	617b      	str	r3, [r7, #20]
 8001b8a:	687b      	ldr	r3, [r7, #4]
 8001b8c:	4a22      	ldr	r2, [pc, #136]	; (8001c18 <OC1Config+0xfc>)
 8001b8e:	4293      	cmp	r3, r2
 8001b90:	d00b      	beq.n	8001baa <OC1Config+0x8e>
 8001b92:	687b      	ldr	r3, [r7, #4]
 8001b94:	4a21      	ldr	r2, [pc, #132]	; (8001c1c <OC1Config+0x100>)
 8001b96:	4293      	cmp	r3, r2
 8001b98:	d007      	beq.n	8001baa <OC1Config+0x8e>
 8001b9a:	687b      	ldr	r3, [r7, #4]
 8001b9c:	4a20      	ldr	r2, [pc, #128]	; (8001c20 <OC1Config+0x104>)
 8001b9e:	4293      	cmp	r3, r2
 8001ba0:	d003      	beq.n	8001baa <OC1Config+0x8e>
 8001ba2:	687b      	ldr	r3, [r7, #4]
 8001ba4:	4a1f      	ldr	r2, [pc, #124]	; (8001c24 <OC1Config+0x108>)
 8001ba6:	4293      	cmp	r3, r2
 8001ba8:	d120      	bne.n	8001bec <OC1Config+0xd0>
 8001baa:	697b      	ldr	r3, [r7, #20]
 8001bac:	2208      	movs	r2, #8
 8001bae:	4393      	bics	r3, r2
 8001bb0:	1c1a      	adds	r2, r3, #0
 8001bb2:	683b      	ldr	r3, [r7, #0]
 8001bb4:	695b      	ldr	r3, [r3, #20]
 8001bb6:	009b      	lsls	r3, r3, #2
 8001bb8:	4313      	orrs	r3, r2
 8001bba:	617b      	str	r3, [r7, #20]
 8001bbc:	697b      	ldr	r3, [r7, #20]
 8001bbe:	2204      	movs	r2, #4
 8001bc0:	4393      	bics	r3, r2
 8001bc2:	1c1a      	adds	r2, r3, #0
 8001bc4:	683b      	ldr	r3, [r7, #0]
 8001bc6:	689b      	ldr	r3, [r3, #8]
 8001bc8:	009b      	lsls	r3, r3, #2
 8001bca:	4313      	orrs	r3, r2
 8001bcc:	617b      	str	r3, [r7, #20]
 8001bce:	693b      	ldr	r3, [r7, #16]
 8001bd0:	4a15      	ldr	r2, [pc, #84]	; (8001c28 <OC1Config+0x10c>)
 8001bd2:	401a      	ands	r2, r3
 8001bd4:	683b      	ldr	r3, [r7, #0]
 8001bd6:	699b      	ldr	r3, [r3, #24]
 8001bd8:	4313      	orrs	r3, r2
 8001bda:	613b      	str	r3, [r7, #16]
 8001bdc:	693b      	ldr	r3, [r7, #16]
 8001bde:	4a13      	ldr	r2, [pc, #76]	; (8001c2c <OC1Config+0x110>)
 8001be0:	401a      	ands	r2, r3
 8001be2:	683b      	ldr	r3, [r7, #0]
 8001be4:	69db      	ldr	r3, [r3, #28]
 8001be6:	005b      	lsls	r3, r3, #1
 8001be8:	4313      	orrs	r3, r2
 8001bea:	613b      	str	r3, [r7, #16]
 8001bec:	687b      	ldr	r3, [r7, #4]
 8001bee:	693a      	ldr	r2, [r7, #16]
 8001bf0:	605a      	str	r2, [r3, #4]
 8001bf2:	687b      	ldr	r3, [r7, #4]
 8001bf4:	68fa      	ldr	r2, [r7, #12]
 8001bf6:	619a      	str	r2, [r3, #24]
 8001bf8:	683b      	ldr	r3, [r7, #0]
 8001bfa:	68db      	ldr	r3, [r3, #12]
 8001bfc:	687a      	ldr	r2, [r7, #4]
 8001bfe:	1c10      	adds	r0, r2, #0
 8001c00:	1c19      	adds	r1, r3, #0
 8001c02:	f7ff fe43 	bl	800188c <LL_TIM_OC_SetCompareCH1>
 8001c06:	687b      	ldr	r3, [r7, #4]
 8001c08:	697a      	ldr	r2, [r7, #20]
 8001c0a:	621a      	str	r2, [r3, #32]
 8001c0c:	2301      	movs	r3, #1
 8001c0e:	1c18      	adds	r0, r3, #0
 8001c10:	46bd      	mov	sp, r7
 8001c12:	b006      	add	sp, #24
 8001c14:	bd80      	pop	{r7, pc}
 8001c16:	46c0      	nop			; (mov r8, r8)
 8001c18:	40012c00 	.word	0x40012c00
 8001c1c:	40014000 	.word	0x40014000
 8001c20:	40014400 	.word	0x40014400
 8001c24:	40014800 	.word	0x40014800
 8001c28:	fffffeff 	.word	0xfffffeff
 8001c2c:	fffffdff 	.word	0xfffffdff

08001c30 <OC2Config>:
 8001c30:	b580      	push	{r7, lr}
 8001c32:	b086      	sub	sp, #24
 8001c34:	af00      	add	r7, sp, #0
 8001c36:	6078      	str	r0, [r7, #4]
 8001c38:	6039      	str	r1, [r7, #0]
 8001c3a:	2300      	movs	r3, #0
 8001c3c:	60fb      	str	r3, [r7, #12]
 8001c3e:	2300      	movs	r3, #0
 8001c40:	617b      	str	r3, [r7, #20]
 8001c42:	2300      	movs	r3, #0
 8001c44:	613b      	str	r3, [r7, #16]
 8001c46:	687b      	ldr	r3, [r7, #4]
 8001c48:	6a1b      	ldr	r3, [r3, #32]
 8001c4a:	2210      	movs	r2, #16
 8001c4c:	4393      	bics	r3, r2
 8001c4e:	1c1a      	adds	r2, r3, #0
 8001c50:	687b      	ldr	r3, [r7, #4]
 8001c52:	621a      	str	r2, [r3, #32]
 8001c54:	687b      	ldr	r3, [r7, #4]
 8001c56:	6a1b      	ldr	r3, [r3, #32]
 8001c58:	617b      	str	r3, [r7, #20]
 8001c5a:	687b      	ldr	r3, [r7, #4]
 8001c5c:	685b      	ldr	r3, [r3, #4]
 8001c5e:	613b      	str	r3, [r7, #16]
 8001c60:	687b      	ldr	r3, [r7, #4]
 8001c62:	699b      	ldr	r3, [r3, #24]
 8001c64:	60fb      	str	r3, [r7, #12]
 8001c66:	68fb      	ldr	r3, [r7, #12]
 8001c68:	4a31      	ldr	r2, [pc, #196]	; (8001d30 <OC2Config+0x100>)
 8001c6a:	4013      	ands	r3, r2
 8001c6c:	60fb      	str	r3, [r7, #12]
 8001c6e:	68fb      	ldr	r3, [r7, #12]
 8001c70:	4a30      	ldr	r2, [pc, #192]	; (8001d34 <OC2Config+0x104>)
 8001c72:	401a      	ands	r2, r3
 8001c74:	683b      	ldr	r3, [r7, #0]
 8001c76:	681b      	ldr	r3, [r3, #0]
 8001c78:	021b      	lsls	r3, r3, #8
 8001c7a:	4313      	orrs	r3, r2
 8001c7c:	60fb      	str	r3, [r7, #12]
 8001c7e:	697b      	ldr	r3, [r7, #20]
 8001c80:	2220      	movs	r2, #32
 8001c82:	4393      	bics	r3, r2
 8001c84:	1c1a      	adds	r2, r3, #0
 8001c86:	683b      	ldr	r3, [r7, #0]
 8001c88:	691b      	ldr	r3, [r3, #16]
 8001c8a:	011b      	lsls	r3, r3, #4
 8001c8c:	4313      	orrs	r3, r2
 8001c8e:	617b      	str	r3, [r7, #20]
 8001c90:	697b      	ldr	r3, [r7, #20]
 8001c92:	2210      	movs	r2, #16
 8001c94:	4393      	bics	r3, r2
 8001c96:	1c1a      	adds	r2, r3, #0
 8001c98:	683b      	ldr	r3, [r7, #0]
 8001c9a:	685b      	ldr	r3, [r3, #4]
 8001c9c:	011b      	lsls	r3, r3, #4
 8001c9e:	4313      	orrs	r3, r2
 8001ca0:	617b      	str	r3, [r7, #20]
 8001ca2:	687b      	ldr	r3, [r7, #4]
 8001ca4:	4a24      	ldr	r2, [pc, #144]	; (8001d38 <OC2Config+0x108>)
 8001ca6:	4293      	cmp	r3, r2
 8001ca8:	d00b      	beq.n	8001cc2 <OC2Config+0x92>
 8001caa:	687b      	ldr	r3, [r7, #4]
 8001cac:	4a23      	ldr	r2, [pc, #140]	; (8001d3c <OC2Config+0x10c>)
 8001cae:	4293      	cmp	r3, r2
 8001cb0:	d007      	beq.n	8001cc2 <OC2Config+0x92>
 8001cb2:	687b      	ldr	r3, [r7, #4]
 8001cb4:	4a22      	ldr	r2, [pc, #136]	; (8001d40 <OC2Config+0x110>)
 8001cb6:	4293      	cmp	r3, r2
 8001cb8:	d003      	beq.n	8001cc2 <OC2Config+0x92>
 8001cba:	687b      	ldr	r3, [r7, #4]
 8001cbc:	4a21      	ldr	r2, [pc, #132]	; (8001d44 <OC2Config+0x114>)
 8001cbe:	4293      	cmp	r3, r2
 8001cc0:	d121      	bne.n	8001d06 <OC2Config+0xd6>
 8001cc2:	697b      	ldr	r3, [r7, #20]
 8001cc4:	2280      	movs	r2, #128	; 0x80
 8001cc6:	4393      	bics	r3, r2
 8001cc8:	1c1a      	adds	r2, r3, #0
 8001cca:	683b      	ldr	r3, [r7, #0]
 8001ccc:	695b      	ldr	r3, [r3, #20]
 8001cce:	019b      	lsls	r3, r3, #6
 8001cd0:	4313      	orrs	r3, r2
 8001cd2:	617b      	str	r3, [r7, #20]
 8001cd4:	697b      	ldr	r3, [r7, #20]
 8001cd6:	2240      	movs	r2, #64	; 0x40
 8001cd8:	4393      	bics	r3, r2
 8001cda:	1c1a      	adds	r2, r3, #0
 8001cdc:	683b      	ldr	r3, [r7, #0]
 8001cde:	689b      	ldr	r3, [r3, #8]
 8001ce0:	019b      	lsls	r3, r3, #6
 8001ce2:	4313      	orrs	r3, r2
 8001ce4:	617b      	str	r3, [r7, #20]
 8001ce6:	693b      	ldr	r3, [r7, #16]
 8001ce8:	4a17      	ldr	r2, [pc, #92]	; (8001d48 <OC2Config+0x118>)
 8001cea:	401a      	ands	r2, r3
 8001cec:	683b      	ldr	r3, [r7, #0]
 8001cee:	699b      	ldr	r3, [r3, #24]
 8001cf0:	009b      	lsls	r3, r3, #2
 8001cf2:	4313      	orrs	r3, r2
 8001cf4:	613b      	str	r3, [r7, #16]
 8001cf6:	693b      	ldr	r3, [r7, #16]
 8001cf8:	4a14      	ldr	r2, [pc, #80]	; (8001d4c <OC2Config+0x11c>)
 8001cfa:	401a      	ands	r2, r3
 8001cfc:	683b      	ldr	r3, [r7, #0]
 8001cfe:	69db      	ldr	r3, [r3, #28]
 8001d00:	00db      	lsls	r3, r3, #3
 8001d02:	4313      	orrs	r3, r2
 8001d04:	613b      	str	r3, [r7, #16]
 8001d06:	687b      	ldr	r3, [r7, #4]
 8001d08:	693a      	ldr	r2, [r7, #16]
 8001d0a:	605a      	str	r2, [r3, #4]
 8001d0c:	687b      	ldr	r3, [r7, #4]
 8001d0e:	68fa      	ldr	r2, [r7, #12]
 8001d10:	619a      	str	r2, [r3, #24]
 8001d12:	683b      	ldr	r3, [r7, #0]
 8001d14:	68db      	ldr	r3, [r3, #12]
 8001d16:	687a      	ldr	r2, [r7, #4]
 8001d18:	1c10      	adds	r0, r2, #0
 8001d1a:	1c19      	adds	r1, r3, #0
 8001d1c:	f7ff fdc2 	bl	80018a4 <LL_TIM_OC_SetCompareCH2>
 8001d20:	687b      	ldr	r3, [r7, #4]
 8001d22:	697a      	ldr	r2, [r7, #20]
 8001d24:	621a      	str	r2, [r3, #32]
 8001d26:	2301      	movs	r3, #1
 8001d28:	1c18      	adds	r0, r3, #0
 8001d2a:	46bd      	mov	sp, r7
 8001d2c:	b006      	add	sp, #24
 8001d2e:	bd80      	pop	{r7, pc}
 8001d30:	fffffcff 	.word	0xfffffcff
 8001d34:	ffff8fff 	.word	0xffff8fff
 8001d38:	40012c00 	.word	0x40012c00
 8001d3c:	40014000 	.word	0x40014000
 8001d40:	40014400 	.word	0x40014400
 8001d44:	40014800 	.word	0x40014800
 8001d48:	fffffbff 	.word	0xfffffbff
 8001d4c:	fffff7ff 	.word	0xfffff7ff

08001d50 <OC3Config>:
 8001d50:	b580      	push	{r7, lr}
 8001d52:	b086      	sub	sp, #24
 8001d54:	af00      	add	r7, sp, #0
 8001d56:	6078      	str	r0, [r7, #4]
 8001d58:	6039      	str	r1, [r7, #0]
 8001d5a:	2300      	movs	r3, #0
 8001d5c:	60fb      	str	r3, [r7, #12]
 8001d5e:	2300      	movs	r3, #0
 8001d60:	617b      	str	r3, [r7, #20]
 8001d62:	2300      	movs	r3, #0
 8001d64:	613b      	str	r3, [r7, #16]
 8001d66:	687b      	ldr	r3, [r7, #4]
 8001d68:	6a1b      	ldr	r3, [r3, #32]
 8001d6a:	4a37      	ldr	r2, [pc, #220]	; (8001e48 <OC3Config+0xf8>)
 8001d6c:	401a      	ands	r2, r3
 8001d6e:	687b      	ldr	r3, [r7, #4]
 8001d70:	621a      	str	r2, [r3, #32]
 8001d72:	687b      	ldr	r3, [r7, #4]
 8001d74:	6a1b      	ldr	r3, [r3, #32]
 8001d76:	617b      	str	r3, [r7, #20]
 8001d78:	687b      	ldr	r3, [r7, #4]
 8001d7a:	685b      	ldr	r3, [r3, #4]
 8001d7c:	613b      	str	r3, [r7, #16]
 8001d7e:	687b      	ldr	r3, [r7, #4]
 8001d80:	69db      	ldr	r3, [r3, #28]
 8001d82:	60fb      	str	r3, [r7, #12]
 8001d84:	68fb      	ldr	r3, [r7, #12]
 8001d86:	2203      	movs	r2, #3
 8001d88:	4393      	bics	r3, r2
 8001d8a:	60fb      	str	r3, [r7, #12]
 8001d8c:	68fb      	ldr	r3, [r7, #12]
 8001d8e:	2270      	movs	r2, #112	; 0x70
 8001d90:	4393      	bics	r3, r2
 8001d92:	1c1a      	adds	r2, r3, #0
 8001d94:	683b      	ldr	r3, [r7, #0]
 8001d96:	681b      	ldr	r3, [r3, #0]
 8001d98:	4313      	orrs	r3, r2
 8001d9a:	60fb      	str	r3, [r7, #12]
 8001d9c:	697b      	ldr	r3, [r7, #20]
 8001d9e:	4a2b      	ldr	r2, [pc, #172]	; (8001e4c <OC3Config+0xfc>)
 8001da0:	401a      	ands	r2, r3
 8001da2:	683b      	ldr	r3, [r7, #0]
 8001da4:	691b      	ldr	r3, [r3, #16]
 8001da6:	021b      	lsls	r3, r3, #8
 8001da8:	4313      	orrs	r3, r2
 8001daa:	617b      	str	r3, [r7, #20]
 8001dac:	697b      	ldr	r3, [r7, #20]
 8001dae:	4a26      	ldr	r2, [pc, #152]	; (8001e48 <OC3Config+0xf8>)
 8001db0:	401a      	ands	r2, r3
 8001db2:	683b      	ldr	r3, [r7, #0]
 8001db4:	685b      	ldr	r3, [r3, #4]
 8001db6:	021b      	lsls	r3, r3, #8
 8001db8:	4313      	orrs	r3, r2
 8001dba:	617b      	str	r3, [r7, #20]
 8001dbc:	687b      	ldr	r3, [r7, #4]
 8001dbe:	4a24      	ldr	r2, [pc, #144]	; (8001e50 <OC3Config+0x100>)
 8001dc0:	4293      	cmp	r3, r2
 8001dc2:	d00b      	beq.n	8001ddc <OC3Config+0x8c>
 8001dc4:	687b      	ldr	r3, [r7, #4]
 8001dc6:	4a23      	ldr	r2, [pc, #140]	; (8001e54 <OC3Config+0x104>)
 8001dc8:	4293      	cmp	r3, r2
 8001dca:	d007      	beq.n	8001ddc <OC3Config+0x8c>
 8001dcc:	687b      	ldr	r3, [r7, #4]
 8001dce:	4a22      	ldr	r2, [pc, #136]	; (8001e58 <OC3Config+0x108>)
 8001dd0:	4293      	cmp	r3, r2
 8001dd2:	d003      	beq.n	8001ddc <OC3Config+0x8c>
 8001dd4:	687b      	ldr	r3, [r7, #4]
 8001dd6:	4a21      	ldr	r2, [pc, #132]	; (8001e5c <OC3Config+0x10c>)
 8001dd8:	4293      	cmp	r3, r2
 8001dda:	d11f      	bne.n	8001e1c <OC3Config+0xcc>
 8001ddc:	697b      	ldr	r3, [r7, #20]
 8001dde:	4a20      	ldr	r2, [pc, #128]	; (8001e60 <OC3Config+0x110>)
 8001de0:	401a      	ands	r2, r3
 8001de2:	683b      	ldr	r3, [r7, #0]
 8001de4:	695b      	ldr	r3, [r3, #20]
 8001de6:	029b      	lsls	r3, r3, #10
 8001de8:	4313      	orrs	r3, r2
 8001dea:	617b      	str	r3, [r7, #20]
 8001dec:	697b      	ldr	r3, [r7, #20]
 8001dee:	4a1d      	ldr	r2, [pc, #116]	; (8001e64 <OC3Config+0x114>)
 8001df0:	401a      	ands	r2, r3
 8001df2:	683b      	ldr	r3, [r7, #0]
 8001df4:	689b      	ldr	r3, [r3, #8]
 8001df6:	029b      	lsls	r3, r3, #10
 8001df8:	4313      	orrs	r3, r2
 8001dfa:	617b      	str	r3, [r7, #20]
 8001dfc:	693b      	ldr	r3, [r7, #16]
 8001dfe:	4a1a      	ldr	r2, [pc, #104]	; (8001e68 <OC3Config+0x118>)
 8001e00:	401a      	ands	r2, r3
 8001e02:	683b      	ldr	r3, [r7, #0]
 8001e04:	699b      	ldr	r3, [r3, #24]
 8001e06:	011b      	lsls	r3, r3, #4
 8001e08:	4313      	orrs	r3, r2
 8001e0a:	613b      	str	r3, [r7, #16]
 8001e0c:	693b      	ldr	r3, [r7, #16]
 8001e0e:	4a17      	ldr	r2, [pc, #92]	; (8001e6c <OC3Config+0x11c>)
 8001e10:	401a      	ands	r2, r3
 8001e12:	683b      	ldr	r3, [r7, #0]
 8001e14:	69db      	ldr	r3, [r3, #28]
 8001e16:	015b      	lsls	r3, r3, #5
 8001e18:	4313      	orrs	r3, r2
 8001e1a:	613b      	str	r3, [r7, #16]
 8001e1c:	687b      	ldr	r3, [r7, #4]
 8001e1e:	693a      	ldr	r2, [r7, #16]
 8001e20:	605a      	str	r2, [r3, #4]
 8001e22:	687b      	ldr	r3, [r7, #4]
 8001e24:	68fa      	ldr	r2, [r7, #12]
 8001e26:	61da      	str	r2, [r3, #28]
 8001e28:	683b      	ldr	r3, [r7, #0]
 8001e2a:	68db      	ldr	r3, [r3, #12]
 8001e2c:	687a      	ldr	r2, [r7, #4]
 8001e2e:	1c10      	adds	r0, r2, #0
 8001e30:	1c19      	adds	r1, r3, #0
 8001e32:	f7ff fd43 	bl	80018bc <LL_TIM_OC_SetCompareCH3>
 8001e36:	687b      	ldr	r3, [r7, #4]
 8001e38:	697a      	ldr	r2, [r7, #20]
 8001e3a:	621a      	str	r2, [r3, #32]
 8001e3c:	2301      	movs	r3, #1
 8001e3e:	1c18      	adds	r0, r3, #0
 8001e40:	46bd      	mov	sp, r7
 8001e42:	b006      	add	sp, #24
 8001e44:	bd80      	pop	{r7, pc}
 8001e46:	46c0      	nop			; (mov r8, r8)
 8001e48:	fffffeff 	.word	0xfffffeff
 8001e4c:	fffffdff 	.word	0xfffffdff
 8001e50:	40012c00 	.word	0x40012c00
 8001e54:	40014000 	.word	0x40014000
 8001e58:	40014400 	.word	0x40014400
 8001e5c:	40014800 	.word	0x40014800
 8001e60:	fffff7ff 	.word	0xfffff7ff
 8001e64:	fffffbff 	.word	0xfffffbff
 8001e68:	ffffefff 	.word	0xffffefff
 8001e6c:	ffffdfff 	.word	0xffffdfff

08001e70 <OC4Config>:
 8001e70:	b580      	push	{r7, lr}
 8001e72:	b086      	sub	sp, #24
 8001e74:	af00      	add	r7, sp, #0
 8001e76:	6078      	str	r0, [r7, #4]
 8001e78:	6039      	str	r1, [r7, #0]
 8001e7a:	2300      	movs	r3, #0
 8001e7c:	613b      	str	r3, [r7, #16]
 8001e7e:	2300      	movs	r3, #0
 8001e80:	60fb      	str	r3, [r7, #12]
 8001e82:	2300      	movs	r3, #0
 8001e84:	617b      	str	r3, [r7, #20]
 8001e86:	687b      	ldr	r3, [r7, #4]
 8001e88:	6a1b      	ldr	r3, [r3, #32]
 8001e8a:	4a2b      	ldr	r2, [pc, #172]	; (8001f38 <OC4Config+0xc8>)
 8001e8c:	401a      	ands	r2, r3
 8001e8e:	687b      	ldr	r3, [r7, #4]
 8001e90:	621a      	str	r2, [r3, #32]
 8001e92:	687b      	ldr	r3, [r7, #4]
 8001e94:	6a1b      	ldr	r3, [r3, #32]
 8001e96:	60fb      	str	r3, [r7, #12]
 8001e98:	687b      	ldr	r3, [r7, #4]
 8001e9a:	685b      	ldr	r3, [r3, #4]
 8001e9c:	617b      	str	r3, [r7, #20]
 8001e9e:	687b      	ldr	r3, [r7, #4]
 8001ea0:	69db      	ldr	r3, [r3, #28]
 8001ea2:	613b      	str	r3, [r7, #16]
 8001ea4:	693b      	ldr	r3, [r7, #16]
 8001ea6:	4a25      	ldr	r2, [pc, #148]	; (8001f3c <OC4Config+0xcc>)
 8001ea8:	4013      	ands	r3, r2
 8001eaa:	613b      	str	r3, [r7, #16]
 8001eac:	693b      	ldr	r3, [r7, #16]
 8001eae:	4a24      	ldr	r2, [pc, #144]	; (8001f40 <OC4Config+0xd0>)
 8001eb0:	401a      	ands	r2, r3
 8001eb2:	683b      	ldr	r3, [r7, #0]
 8001eb4:	681b      	ldr	r3, [r3, #0]
 8001eb6:	021b      	lsls	r3, r3, #8
 8001eb8:	4313      	orrs	r3, r2
 8001eba:	613b      	str	r3, [r7, #16]
 8001ebc:	68fb      	ldr	r3, [r7, #12]
 8001ebe:	4a21      	ldr	r2, [pc, #132]	; (8001f44 <OC4Config+0xd4>)
 8001ec0:	401a      	ands	r2, r3
 8001ec2:	683b      	ldr	r3, [r7, #0]
 8001ec4:	691b      	ldr	r3, [r3, #16]
 8001ec6:	031b      	lsls	r3, r3, #12
 8001ec8:	4313      	orrs	r3, r2
 8001eca:	60fb      	str	r3, [r7, #12]
 8001ecc:	68fb      	ldr	r3, [r7, #12]
 8001ece:	4a1a      	ldr	r2, [pc, #104]	; (8001f38 <OC4Config+0xc8>)
 8001ed0:	401a      	ands	r2, r3
 8001ed2:	683b      	ldr	r3, [r7, #0]
 8001ed4:	685b      	ldr	r3, [r3, #4]
 8001ed6:	031b      	lsls	r3, r3, #12
 8001ed8:	4313      	orrs	r3, r2
 8001eda:	60fb      	str	r3, [r7, #12]
 8001edc:	687b      	ldr	r3, [r7, #4]
 8001ede:	4a1a      	ldr	r2, [pc, #104]	; (8001f48 <OC4Config+0xd8>)
 8001ee0:	4293      	cmp	r3, r2
 8001ee2:	d00b      	beq.n	8001efc <OC4Config+0x8c>
 8001ee4:	687b      	ldr	r3, [r7, #4]
 8001ee6:	4a19      	ldr	r2, [pc, #100]	; (8001f4c <OC4Config+0xdc>)
 8001ee8:	4293      	cmp	r3, r2
 8001eea:	d007      	beq.n	8001efc <OC4Config+0x8c>
 8001eec:	687b      	ldr	r3, [r7, #4]
 8001eee:	4a18      	ldr	r2, [pc, #96]	; (8001f50 <OC4Config+0xe0>)
 8001ef0:	4293      	cmp	r3, r2
 8001ef2:	d003      	beq.n	8001efc <OC4Config+0x8c>
 8001ef4:	687b      	ldr	r3, [r7, #4]
 8001ef6:	4a17      	ldr	r2, [pc, #92]	; (8001f54 <OC4Config+0xe4>)
 8001ef8:	4293      	cmp	r3, r2
 8001efa:	d107      	bne.n	8001f0c <OC4Config+0x9c>
 8001efc:	697b      	ldr	r3, [r7, #20]
 8001efe:	4a16      	ldr	r2, [pc, #88]	; (8001f58 <OC4Config+0xe8>)
 8001f00:	401a      	ands	r2, r3
 8001f02:	683b      	ldr	r3, [r7, #0]
 8001f04:	699b      	ldr	r3, [r3, #24]
 8001f06:	019b      	lsls	r3, r3, #6
 8001f08:	4313      	orrs	r3, r2
 8001f0a:	617b      	str	r3, [r7, #20]
 8001f0c:	687b      	ldr	r3, [r7, #4]
 8001f0e:	697a      	ldr	r2, [r7, #20]
 8001f10:	605a      	str	r2, [r3, #4]
 8001f12:	687b      	ldr	r3, [r7, #4]
 8001f14:	693a      	ldr	r2, [r7, #16]
 8001f16:	61da      	str	r2, [r3, #28]
 8001f18:	683b      	ldr	r3, [r7, #0]
 8001f1a:	68db      	ldr	r3, [r3, #12]
 8001f1c:	687a      	ldr	r2, [r7, #4]
 8001f1e:	1c10      	adds	r0, r2, #0
 8001f20:	1c19      	adds	r1, r3, #0
 8001f22:	f7ff fcd7 	bl	80018d4 <LL_TIM_OC_SetCompareCH4>
 8001f26:	687b      	ldr	r3, [r7, #4]
 8001f28:	68fa      	ldr	r2, [r7, #12]
 8001f2a:	621a      	str	r2, [r3, #32]
 8001f2c:	2301      	movs	r3, #1
 8001f2e:	1c18      	adds	r0, r3, #0
 8001f30:	46bd      	mov	sp, r7
 8001f32:	b006      	add	sp, #24
 8001f34:	bd80      	pop	{r7, pc}
 8001f36:	46c0      	nop			; (mov r8, r8)
 8001f38:	ffffefff 	.word	0xffffefff
 8001f3c:	fffffcff 	.word	0xfffffcff
 8001f40:	ffff8fff 	.word	0xffff8fff
 8001f44:	ffffdfff 	.word	0xffffdfff
 8001f48:	40012c00 	.word	0x40012c00
 8001f4c:	40014000 	.word	0x40014000
 8001f50:	40014400 	.word	0x40014400
 8001f54:	40014800 	.word	0x40014800
 8001f58:	ffffbfff 	.word	0xffffbfff

08001f5c <atexit>:
 8001f5c:	b508      	push	{r3, lr}
 8001f5e:	1c01      	adds	r1, r0, #0
 8001f60:	2200      	movs	r2, #0
 8001f62:	2000      	movs	r0, #0
 8001f64:	2300      	movs	r3, #0
 8001f66:	f000 f83f 	bl	8001fe8 <__register_exitproc>
 8001f6a:	bd08      	pop	{r3, pc}

08001f6c <__libc_fini_array>:
 8001f6c:	b538      	push	{r3, r4, r5, lr}
 8001f6e:	4b09      	ldr	r3, [pc, #36]	; (8001f94 <__libc_fini_array+0x28>)
 8001f70:	4c09      	ldr	r4, [pc, #36]	; (8001f98 <__libc_fini_array+0x2c>)
 8001f72:	1ae4      	subs	r4, r4, r3
 8001f74:	10a4      	asrs	r4, r4, #2
 8001f76:	d009      	beq.n	8001f8c <__libc_fini_array+0x20>
 8001f78:	4a08      	ldr	r2, [pc, #32]	; (8001f9c <__libc_fini_array+0x30>)
 8001f7a:	18a5      	adds	r5, r4, r2
 8001f7c:	00ad      	lsls	r5, r5, #2
 8001f7e:	18ed      	adds	r5, r5, r3
 8001f80:	682b      	ldr	r3, [r5, #0]
 8001f82:	3c01      	subs	r4, #1
 8001f84:	4798      	blx	r3
 8001f86:	3d04      	subs	r5, #4
 8001f88:	2c00      	cmp	r4, #0
 8001f8a:	d1f9      	bne.n	8001f80 <__libc_fini_array+0x14>
 8001f8c:	f000 f8a8 	bl	80020e0 <_fini>
 8001f90:	bd38      	pop	{r3, r4, r5, pc}
 8001f92:	46c0      	nop			; (mov r8, r8)
 8001f94:	0800213c 	.word	0x0800213c
 8001f98:	08002140 	.word	0x08002140
 8001f9c:	3fffffff 	.word	0x3fffffff

08001fa0 <__libc_init_array>:
 8001fa0:	b570      	push	{r4, r5, r6, lr}
 8001fa2:	4e0d      	ldr	r6, [pc, #52]	; (8001fd8 <__libc_init_array+0x38>)
 8001fa4:	4d0d      	ldr	r5, [pc, #52]	; (8001fdc <__libc_init_array+0x3c>)
 8001fa6:	2400      	movs	r4, #0
 8001fa8:	1bad      	subs	r5, r5, r6
 8001faa:	10ad      	asrs	r5, r5, #2
 8001fac:	d005      	beq.n	8001fba <__libc_init_array+0x1a>
 8001fae:	00a3      	lsls	r3, r4, #2
 8001fb0:	58f3      	ldr	r3, [r6, r3]
 8001fb2:	3401      	adds	r4, #1
 8001fb4:	4798      	blx	r3
 8001fb6:	42a5      	cmp	r5, r4
 8001fb8:	d1f9      	bne.n	8001fae <__libc_init_array+0xe>
 8001fba:	f000 f88b 	bl	80020d4 <_init>
 8001fbe:	4e08      	ldr	r6, [pc, #32]	; (8001fe0 <__libc_init_array+0x40>)
 8001fc0:	4d08      	ldr	r5, [pc, #32]	; (8001fe4 <__libc_init_array+0x44>)
 8001fc2:	2400      	movs	r4, #0
 8001fc4:	1bad      	subs	r5, r5, r6
 8001fc6:	10ad      	asrs	r5, r5, #2
 8001fc8:	d005      	beq.n	8001fd6 <__libc_init_array+0x36>
 8001fca:	00a3      	lsls	r3, r4, #2
 8001fcc:	58f3      	ldr	r3, [r6, r3]
 8001fce:	3401      	adds	r4, #1
 8001fd0:	4798      	blx	r3
 8001fd2:	42a5      	cmp	r5, r4
 8001fd4:	d1f9      	bne.n	8001fca <__libc_init_array+0x2a>
 8001fd6:	bd70      	pop	{r4, r5, r6, pc}
 8001fd8:	08002134 	.word	0x08002134
 8001fdc:	08002134 	.word	0x08002134
 8001fe0:	08002134 	.word	0x08002134
 8001fe4:	0800213c 	.word	0x0800213c

08001fe8 <__register_exitproc>:
 8001fe8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001fea:	4644      	mov	r4, r8
 8001fec:	465f      	mov	r7, fp
 8001fee:	4656      	mov	r6, sl
 8001ff0:	464d      	mov	r5, r9
 8001ff2:	469b      	mov	fp, r3
 8001ff4:	4b2f      	ldr	r3, [pc, #188]	; (80020b4 <__register_exitproc+0xcc>)
 8001ff6:	b4f0      	push	{r4, r5, r6, r7}
 8001ff8:	681c      	ldr	r4, [r3, #0]
 8001ffa:	23a4      	movs	r3, #164	; 0xa4
 8001ffc:	005b      	lsls	r3, r3, #1
 8001ffe:	1c05      	adds	r5, r0, #0
 8002000:	58e0      	ldr	r0, [r4, r3]
 8002002:	1c0e      	adds	r6, r1, #0
 8002004:	4690      	mov	r8, r2
 8002006:	2800      	cmp	r0, #0
 8002008:	d04b      	beq.n	80020a2 <__register_exitproc+0xba>
 800200a:	6843      	ldr	r3, [r0, #4]
 800200c:	2b1f      	cmp	r3, #31
 800200e:	dc0d      	bgt.n	800202c <__register_exitproc+0x44>
 8002010:	1c5c      	adds	r4, r3, #1
 8002012:	2d00      	cmp	r5, #0
 8002014:	d121      	bne.n	800205a <__register_exitproc+0x72>
 8002016:	3302      	adds	r3, #2
 8002018:	009b      	lsls	r3, r3, #2
 800201a:	6044      	str	r4, [r0, #4]
 800201c:	501e      	str	r6, [r3, r0]
 800201e:	2000      	movs	r0, #0
 8002020:	bc3c      	pop	{r2, r3, r4, r5}
 8002022:	4690      	mov	r8, r2
 8002024:	4699      	mov	r9, r3
 8002026:	46a2      	mov	sl, r4
 8002028:	46ab      	mov	fp, r5
 800202a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800202c:	4b22      	ldr	r3, [pc, #136]	; (80020b8 <__register_exitproc+0xd0>)
 800202e:	2b00      	cmp	r3, #0
 8002030:	d03c      	beq.n	80020ac <__register_exitproc+0xc4>
 8002032:	20c8      	movs	r0, #200	; 0xc8
 8002034:	0040      	lsls	r0, r0, #1
 8002036:	e000      	b.n	800203a <__register_exitproc+0x52>
 8002038:	bf00      	nop
 800203a:	2800      	cmp	r0, #0
 800203c:	d036      	beq.n	80020ac <__register_exitproc+0xc4>
 800203e:	22a4      	movs	r2, #164	; 0xa4
 8002040:	2300      	movs	r3, #0
 8002042:	0052      	lsls	r2, r2, #1
 8002044:	58a1      	ldr	r1, [r4, r2]
 8002046:	6043      	str	r3, [r0, #4]
 8002048:	6001      	str	r1, [r0, #0]
 800204a:	50a0      	str	r0, [r4, r2]
 800204c:	3240      	adds	r2, #64	; 0x40
 800204e:	5083      	str	r3, [r0, r2]
 8002050:	3204      	adds	r2, #4
 8002052:	5083      	str	r3, [r0, r2]
 8002054:	2401      	movs	r4, #1
 8002056:	2d00      	cmp	r5, #0
 8002058:	d0dd      	beq.n	8002016 <__register_exitproc+0x2e>
 800205a:	009a      	lsls	r2, r3, #2
 800205c:	4691      	mov	r9, r2
 800205e:	4481      	add	r9, r0
 8002060:	4642      	mov	r2, r8
 8002062:	2188      	movs	r1, #136	; 0x88
 8002064:	464f      	mov	r7, r9
 8002066:	507a      	str	r2, [r7, r1]
 8002068:	22c4      	movs	r2, #196	; 0xc4
 800206a:	0052      	lsls	r2, r2, #1
 800206c:	4690      	mov	r8, r2
 800206e:	4480      	add	r8, r0
 8002070:	4642      	mov	r2, r8
 8002072:	3987      	subs	r1, #135	; 0x87
 8002074:	4099      	lsls	r1, r3
 8002076:	6812      	ldr	r2, [r2, #0]
 8002078:	468a      	mov	sl, r1
 800207a:	430a      	orrs	r2, r1
 800207c:	4694      	mov	ip, r2
 800207e:	4642      	mov	r2, r8
 8002080:	4661      	mov	r1, ip
 8002082:	6011      	str	r1, [r2, #0]
 8002084:	2284      	movs	r2, #132	; 0x84
 8002086:	4649      	mov	r1, r9
 8002088:	465f      	mov	r7, fp
 800208a:	0052      	lsls	r2, r2, #1
 800208c:	508f      	str	r7, [r1, r2]
 800208e:	2d02      	cmp	r5, #2
 8002090:	d1c1      	bne.n	8002016 <__register_exitproc+0x2e>
 8002092:	1c02      	adds	r2, r0, #0
 8002094:	4655      	mov	r5, sl
 8002096:	328d      	adds	r2, #141	; 0x8d
 8002098:	32ff      	adds	r2, #255	; 0xff
 800209a:	6811      	ldr	r1, [r2, #0]
 800209c:	430d      	orrs	r5, r1
 800209e:	6015      	str	r5, [r2, #0]
 80020a0:	e7b9      	b.n	8002016 <__register_exitproc+0x2e>
 80020a2:	1c20      	adds	r0, r4, #0
 80020a4:	304d      	adds	r0, #77	; 0x4d
 80020a6:	30ff      	adds	r0, #255	; 0xff
 80020a8:	50e0      	str	r0, [r4, r3]
 80020aa:	e7ae      	b.n	800200a <__register_exitproc+0x22>
 80020ac:	2001      	movs	r0, #1
 80020ae:	4240      	negs	r0, r0
 80020b0:	e7b6      	b.n	8002020 <__register_exitproc+0x38>
 80020b2:	46c0      	nop			; (mov r8, r8)
 80020b4:	08002130 	.word	0x08002130
 80020b8:	00000000 	.word	0x00000000

080020bc <register_fini>:
 80020bc:	b508      	push	{r3, lr}
 80020be:	4b03      	ldr	r3, [pc, #12]	; (80020cc <register_fini+0x10>)
 80020c0:	2b00      	cmp	r3, #0
 80020c2:	d002      	beq.n	80020ca <register_fini+0xe>
 80020c4:	4802      	ldr	r0, [pc, #8]	; (80020d0 <register_fini+0x14>)
 80020c6:	f7ff ff49 	bl	8001f5c <atexit>
 80020ca:	bd08      	pop	{r3, pc}
 80020cc:	00000000 	.word	0x00000000
 80020d0:	08001f6d 	.word	0x08001f6d

080020d4 <_init>:
 80020d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80020d6:	46c0      	nop			; (mov r8, r8)
 80020d8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80020da:	bc08      	pop	{r3}
 80020dc:	469e      	mov	lr, r3
 80020de:	4770      	bx	lr

080020e0 <_fini>:
 80020e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80020e2:	46c0      	nop			; (mov r8, r8)
 80020e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80020e6:	bc08      	pop	{r3}
 80020e8:	469e      	mov	lr, r3
 80020ea:	4770      	bx	lr
